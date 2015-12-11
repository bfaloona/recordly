require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "/search" do

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
    assert_match /nothing here/, last_response.body
  end

end
