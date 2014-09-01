module Sendcloud

  module MailList

    extend self

    def create(params)
      Sendcloud.post('list.create', params)
    end

    def get(params)
      Sendcloud.get('list.get', params)
    end

    def delete(params)
      Sendcloud.get('list.delete', params)
    end

    def update(params)
      Sendcloud.post('list.update', params)
    end

    def member_add(params)
      Sendcloud.post('list_member.add', params)
    end

    def member_delete(params)
      Sendcloud.post('list_member.delete', params)
    end

    def member_get(params)
      Sendcloud.get('list_member.get', params)
    end

    def member_update(params)
      Sendcloud.post('list_member.update', params)
    end

  end

end
