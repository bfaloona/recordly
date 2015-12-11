require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "/sessions" do

  before do
    logout
  end

  after do
    Warden.test_reset!
  end

  describe "unauthenticated" do

    before do
      get "/"
    end

    it "should return 401 Unauthorized" do
      assert_equal( 401, last_response.status)
    end

    describe "logout" do

      before do
        login_as User.find(1)
        get "/album/1"
      end

      it "should destroy session and redirect to login page" do
        get "/sessions/logout"
        assert_equal 302, last_response.status
        follow_redirect!
        assert_equal 401, last_response.status
        assert_match /password/, last_response.body
      end

    end

  end
end