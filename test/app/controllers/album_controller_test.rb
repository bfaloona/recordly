require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "/album" do
  before do
    get "/album"
  end

  it "should return Albums heading text" do
    assert last_response.body.match /Albums/
  end
end
