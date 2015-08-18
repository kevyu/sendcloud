module Sendcloud

  module Template

    extend self

    def add params
      Sendcloud.post('template.add', params)
    end
    
    def delete params
      Sendcloud.post('template.delete', params)
    end
    
    def get params
      Sendcloud.get('template.get', params)
    end
    
    def update params
      Sendcloud.post('template.update', params)
    end

  end

end
