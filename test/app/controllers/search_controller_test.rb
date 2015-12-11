require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "/search" do

  before do
    login_as User.find(1)
  end

  after do
    Warden.test_reset!
  end

  it "should return items for '/search/z'" do
    get "/search/z"
    assert_match /Brazil/, last_response.body
  end

  it "should return items for '/'" do
    get "/"
    assert_match /Brazil/, last_response.body
  end

  it "should not return items for '/search/zz'" do
    get "/search/zz"
    assert_match /No matches for/, last_response.body
  end

end
