module Sendcloud
  module Bounces

    extend self

    def get(params)
      Sendcloud.get('bounces.get', params)
    end

    def delete(params)
      Sendcloud.post('bounces.delete', params)
    end

    def count(params)
      Sendcloud.get('bounces.count', params)
    end

    def add(params)
      Sendcloud.post('bounces.add', params)
    end

  end
end