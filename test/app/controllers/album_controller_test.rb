require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "/album" do

  before do
    login_as User.find(1)
    get "/album"
  end

  after do
    Warden.test_reset!
  end

  it "should return Albums heading text" do
    assert_match /Albums/, last_response.body
  end
end
