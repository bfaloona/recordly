Recordly::App.controllers :artist do

  get :index do
    @artists = Artist.all
    render 'artist/index'
  end

  get :show, map: "artist/:id" do
    @artist = Artist.find(params[:id])
    render 'artist/show'
  end

end
