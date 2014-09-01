module Sendcloud

  module Stats
    extend self

    def get(params)
      Sendcloud.get('stats.get', params)
    end
  end
end