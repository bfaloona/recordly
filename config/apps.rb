Padrino.configure_apps do
  # enable :sessions
  set :session_secret, 'bf33791e6abdc21832e83ac3e8fb6fc085478fed5b40f0fd41b10a35bdb9785c'
  set :protection, :except => :path_traversal
  set :protect_from_csrf, true
end

# Mounts the core application for this project
Padrino.mount('Recordly::App', :app_file => Padrino.root('app/app.rb')).to('/')
