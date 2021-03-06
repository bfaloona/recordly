require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "/artist" do

  before do
    login_as User.find(1)
    get "/artist"
  end

  after do
    Warden.test_reset!
  end

  it "should return artists heading text" do
    assert_match /Artists/, last_response.body
  end

  it "should return 2 artists" do
    assert_match /Bomba Estéreo/, last_response.body
    assert_match /Yo-Yo Ma/, last_response.body
  end

end
