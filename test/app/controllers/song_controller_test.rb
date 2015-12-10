require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "/song" do
  before do
    get "/song"
  end

  it "should return Songs heading text" do
    assert last_response.body.match /Songs/
  end
end
