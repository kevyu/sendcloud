require File.expand_path('../spec_helper.rb', __FILE__)


describe  Sendcloud::MailList do

  describe 'create' do
    it 'should return success' do
      response = Sendcloud::MailList.create({
                                          :address => 'test-sj@78jian.sendcloud.org',
                                          :name => 'test mail list',
                                          :description => 'test mail list'
                                      })
      expect(response['message']).to eq('success')
    end
  end

  describe 'create' do
    it 'should return success' do
      response = Sendcloud::MailList.member_add({
                                                :mail_list_addr => 'test-sj@78jian.sendcloud.org',
                                                :member_addr => 'test@test.org',
                                                :name => 'test user'
                                            })
      expect(response['message']).to eq('success')
    end
  end

  describe 'delete' do
    it 'should return success' do
      response = Sendcloud::MailList.member_delete({
                                                    :mail_list_addr => 'test-sj@78jian.sendcloud.org',
                                                    :member_addr => 'test@test.org'
                                                })
      expect(response['message']).to eq('success')
    end
  end


end