module Sendcloud

  module Unsubscribes

    extend self

    def get(params)
      Sendcloud.get('unsubscribes.get', params)
    end

    def delete(params)
      Sendcloud.post('unsubscribes.delete', params)
    end

    def add(params)
      Sendcloud.post('unsubscribes.add', params)
    end

  end
end