require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "Artist Model" do
  it 'can construct a new instance' do
    @artist = Artist.new
    refute_nil @artist
  end
end
