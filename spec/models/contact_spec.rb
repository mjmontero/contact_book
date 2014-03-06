require 'spec_helper'

describe Contact do

  before(:each) do
    @contact = FactoryGirl.create(:contact)   
  end
  
  it "should have valid factory" do
    @contact.should be_valid
  end

  it { should validate_presence_of(:firstname) }

  it { should validate_presence_of(:lastname) }
  
  it { should validate_presence_of(:email) }

  it { should validate_presence_of(:phonenumber) }

  it { should have_attached_file(:picture) }

  it { should validate_attachment_content_type(:picture).
                allowing('image/png', 'image/gif').
                rejecting('text/plain', 'text/xml') }

  it "sends an email" do
    ContactMailer.welcome_email(@contact).deliver
    ActionMailer::Base.deliveries.last.to.should == [@contact.email]
  end

end
