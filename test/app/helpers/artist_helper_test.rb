require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "Recordly::App::ArtistHelper" do
  before do
    @helpers = Class.new
    @helpers.extend Recordly::App::ArtistHelper
  end

  def helpers
    @helpers
  end

  it "should return bar" do
    assert_equal 'bar', helpers.foo
  end
end
