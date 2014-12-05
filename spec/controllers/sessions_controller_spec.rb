require 'rails_helper'

describe SessionsController do
  describe '#new' do
    it "renders the login form" do
      get :new
      expect(response).to be_success
    end
  end
end
