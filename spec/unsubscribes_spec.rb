require File.expand_path('../spec_helper.rb', __FILE__)

describe  Sendcloud::Stats do

  describe 'get' do
    it 'should return success' do
      response = Sendcloud::Unsubscribes.get(days: 2)
      expect(response['message']).to eq('success')
    end
  end

  describe 'add' do
    it 'should return success' do
      response = Sendcloud::Unsubscribes.get(email: 'test-delete@test.org')
      expect(response['message']).to eq('success')
    end
  end

end