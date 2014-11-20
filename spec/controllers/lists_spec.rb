require 'rails_helper'

require 'shoulda/matchers'

describe ListsController do
	
	it "should get page for lists" do

		get :index
		expect(response).to have_http_status(:success)
		expect(response).to render_template(:index)

	end

	it "should get an object from db" do

		get :index
		assigns(:lists).should_not be_nil

	end

	it "should create a list" do

		post :create, list: FactoryGirl.attributes_for(:list)
		expect(response).to redirect_to(lists_path)

	end

end