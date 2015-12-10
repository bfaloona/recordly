require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "/artist" do
  before do
    get "/artist"
  end

  it "should return artists heading text" do
    assert_match /Artists/, last_response.body
  end
end
