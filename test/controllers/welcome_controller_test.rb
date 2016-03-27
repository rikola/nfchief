require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase

	def setup
		@base_title = "NFChief"
	end

	test 'should get index' do
		get :index
		assert_response :success
		assert_select "title", "Home – #{@base_title}"
	end

	test 'should get about' do
		get :about
		assert_response :success
		assert_select "title", "About – #{@base_title}"
	end

end
