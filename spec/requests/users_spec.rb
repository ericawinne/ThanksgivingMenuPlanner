require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET #index' do
    before(:example) { get users_path } 

    it "is a success" do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'index' template" do
      expect(response).to render_template('index')
    end

    it "assigns all users to @users" do
      expect(assigns(:users)).to eq(User.all)
    end
  end
end

RSpec.describe UsersController, type: :controller do
  include Devise::Test::ControllerHelpers
  include Devise::TestHelpers
  describe 'GET #show' do

    it "renders 'show' template" do
      user = create(:user)
      sign_in :user, user
      get :show, params: {id: user.id}
      expect(response).to render_template('show')
    end
  end
end
 #happy user1=ivan logged in 
#sad make sure it doesnt display erica if ivan is logged in


#test that it loads the show page
#test that varibles are correct. that user is logged in user
#test recipes claimed is for logged in user... happy and sad