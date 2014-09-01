require File.expand_path('../spec_helper.rb', __FILE__)

describe  Sendcloud::Mail do

  describe 'send' do

    it 'should return success' do
      response = Sendcloud::Mail.send({
                               :to => '272056334@qq.com',
                               :from => 'notification@78jian.com',
                               :subject => 'test',
                               :html => 'rspec test'
                           })
      expect(response['message']).to eq('success')
    end

  end

end