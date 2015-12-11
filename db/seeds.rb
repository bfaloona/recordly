YAML.load_file('test/fixtures/artists.yml').each do |artist|
  Artist.create!(artist)
end

YAML.load_file('test/fixtures/albums.yml').each do |album|
  Album.create!(album)
end

YAML.load_file('test/fixtures/songs.yml').each do |song|
  Song.create!(song)
end

u1 = User.new(name: "sue", email: "sue@example.com", password: "suepass", password_confirmation: "suepass")
u2 = User.new(name: "lou", email: "lou@example.com", password: "loupass", password_confirmation: "loupass")

[u1, u2].each do |u|

  if u.valid?
    u.save
  else
    raise u.errors.full_messages.join(' - ')
  end

end