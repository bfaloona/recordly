YAML.load_file('test/fixtures/artists.yml').each do |artist|
  Artist.create!(artist)
end