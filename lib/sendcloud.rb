require 'rest-client'
require 'sendcloud/mail'
require 'sendcloud/mail_list'
require 'sendcloud/template'
require 'sendcloud/stats'
require 'sendcloud/unsubscribes'
require 'sendcloud/bounces'
require 'sendcloud/version'

module Sendcloud

  API_BASE = 'https://sendcloud.sohu.com/webapi'

  class Error < StandardError; end

  def self.setup
    yield self
  end

  class << self
    attr_accessor :api_user, :api_key, :format
  end

  def self.get(path, params)

    request(path, params) do |url, options|
      RestClient.get(url, {:params => options})
    end
  end

  def self.post(path, params)

    request(path, params) do |url, options|
      RestClient.post(url, options)
    end

  end

  def self.request(path, params, &block)
    params = {
        :api_user => Sendcloud.api_user,
        :api_key => Sendcloud.api_key,
    }.merge(params)

    format = params.delete(:format) || 'json'
    url = "#{API_BASE}/#{path}.#{format}"
    begin
      return JSON.parse(yield(url, params))
    rescue JSON::ParserError
      raise Sendcloud::Error.new('sendcloud response invalid')
    end

  end

end
