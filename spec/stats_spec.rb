require File.expand_path('../spec_helper.rb', __FILE__)

describe  Sendcloud::Stats do

  describe 'get' do

    it 'should return success' do
      response = Sendcloud::Stats.get(days: 2, aggregate: 1)
      expect(response['message']).to eq('success')
    end

  end

end