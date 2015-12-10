YAML.load_file('test/fixtures/artists.yml').each do |artist|
  Artist.create!(artist)
end

YAML.load_file('test/fixtures/albums.yml').each do |album|
  Album.create!(album)
end

YAML.load_file('test/fixtures/songs.yml').each do |song|
  Song.create!(song)
end

