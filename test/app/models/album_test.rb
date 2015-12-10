require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "Album Model" do
  it 'can construct a new instance' do
    @album = Album.new
    refute_nil @album
  end
end
