require File.expand_path('../spec_helper.rb', __FILE__)


describe  Sendcloud::Template do

  describe 'add/update/delete' do
    it 'should return success when add template' do
      response = Sendcloud::Template.add({
                                          :invoke_name => 'testtemplate',
                                          :name => 'Test Template',
                                          :html => '<p>Test Email</p>',
                                          :subject => "Template Subject",
                                          :email_type => 1
                                      })
      expect(response['message']).to eq('success')
      
      response = Sendcloud::Template.update({ 
                                          :invoke_name => 'testtemplate',
                                          :name => 'Test Template (Updated)',
                                          :html => '<p>Test Email Content Updated</p>',
                                          :subject => "Template Subject (Updated)",
                                          :email_type => 1
                                      })
      expect(response['message']).to eq('success')
      expect(response['updateCount']).to eq(1)
      
      response = Sendcloud::Template.delete({
                                          :invoke_name => 'testtemplate'
                                      })
      expect(response['message']).to eq('success')
    end
  end
  
  describe 'get' do
    it 'should return success when get template' do
      response = Sendcloud::Template.get({
                                      })  

      expect(response['message']).to eq('success')
    end
  end

end