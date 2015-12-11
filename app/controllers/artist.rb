Recordly::App.controllers :artist do

  get :index do
    @artists = Artist.all
    render 'artist/index', layout: (request.xhr? ? false : true)
  end

  get :show, map: "artist/:id" do
    @artist = Artist.find(params[:id])
    @albums = Album.where(artist: @artist.id)
    render 'artist/show', layout: (request.xhr? ? false : true)
  end

end
