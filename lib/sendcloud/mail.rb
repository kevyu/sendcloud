module Sendcloud

  module Mail

    extend self

    def send(params = {})
      Sendcloud.post('mail.send', params)
    end

  end

end