require 'rails_helper'

describe PagesController do
  describe '#index' do
    it "Visitors can see the homepage " do
      get :index
      expect(response).to be_success
    end
  end
end
