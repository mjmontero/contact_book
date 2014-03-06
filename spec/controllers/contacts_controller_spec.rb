require 'spec_helper'

describe ContactsController do

    before do
        @user = FactoryGirl.create(:user)
        sign_in @user
    end
    
  describe "GET index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end

end
