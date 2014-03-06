require 'spec_helper'
 
describe ContactMailer do
  describe 'welcome' do
    let(:contact) { mock_model Contact, firstname: 'test', email: 'test@email.com' }
    let(:mail) { ContactMailer.welcome_email(contact) }
 
    it 'renders the subject' do
      mail.subject.should == 'Welcome to My Contact Book'
    end
 
    it 'renders the receiver email' do
      mail.to.should == [contact.email]
    end
 
    it 'renders the sender email' do
      mail.from.should == ['noreply@regroup.com']
    end
 
    it 'assigns @firstname' do
      mail.body.encoded.should match(contact.firstname)
    end
 
  end
end