Recordly::App.controllers :song do
  
  get :index do
    @songs = Song.all
    render 'song/index'
  end

  get :show, map: "/song/:id/" do
    @song = Song.find_by_id(params[:id])
    render 'song/show'
  end

  get :new do

  end

  post :create do

  end

end
