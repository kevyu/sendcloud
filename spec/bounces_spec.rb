require File.expand_path('../spec_helper.rb', __FILE__)

describe  Sendcloud::Bounces do

  describe 'get' do

    it 'should return success' do
      response = Sendcloud::Bounces.get(days: 2)
      expect(response['message']).to eq('success')
    end

  end

end