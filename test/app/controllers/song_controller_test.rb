require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "/song" do

  before do
    login_as User.find(1)
    get "/song"
  end

  after do
    Warden.test_reset!
  end

  it "should return Songs heading text" do
    assert last_response.body.match /Songs/
  end
end
