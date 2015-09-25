module Sendcloud

  module Mail

    extend self

    def send(params = {})
      Sendcloud.post('mail.send', params)
    end

    def send_template(params = {})
      Sendcloud.post('mail.send_template', params)
    end

  end

end