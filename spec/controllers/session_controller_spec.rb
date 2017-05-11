require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  render_views
  describe 'post create' do
    it 'sets session[:user_id] if Log In successful' do
      post :create, username: "dp", password: "1"
      expect(@request.session).not_to be nil
    end
  end
end
