Recordly::App.controllers :song do

  before do
    login
  end

  get :index do
    @songs = Song.all
    render 'song/index', layout: (request.xhr? ? false : true)
  end

  get :show, map: "/song/:id/" do
    @song = Song.find_by_id(params[:id])
    render 'song/show', layout: (request.xhr? ? false : true)
  end

  get :new do

  end

  post :create do

  end

end
