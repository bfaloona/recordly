require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Song Model" do
  it 'can construct a new instance' do
    @song = Song.new
    refute_nil @song
  end
end
