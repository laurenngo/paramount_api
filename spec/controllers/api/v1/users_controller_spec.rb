require 'spec_helper'

describe Api::V1::UsersController do

	before(:each) { request.headers['Accept'] = "application/vnd.paramount.v1" }

	describe "GET #show" do
	
		before(:each) do
			@user = FactoryGirl.create :user
			get :show, id: @user.id, format: :json	
		end

		it "returns the information about a reporter on a hash" do
		
			user_response = JSON.parse(response.body, symbolize_names: true)
			expect(user_response[:email]).to eql @user.email
		end

		it { should respond_with 200 }

	end

	
	describe "POST #create" do

		context "when is successfully created" do

			before(:each) do
				@invalid_user_attributes = {password:"12345678", password_confirmation: "12345678"}
				post :create, {user:@invalid_user_attributes}, format: :json
			end

			it "renders an ERROR json" do
				user_response = JSON.parse(response.body, symbolize_names: true)
				expect(user_response).to have_key(:errors)
			end

			it "renders an ERROR json re: why the user could not be created" do
				user_response = JSON.parse(response.body, symbolize_names: true)
				expect(user_response[:errors][:email]).to include "can't be blank"
			end

			it {should respond_with 422}

		

		end

	end


end
