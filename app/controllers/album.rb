Recordly::App.controllers :album do

  before do
    login
  end

  get :index do
    @albums = Album.all
    render 'album/index', layout: (request.xhr? ? false : true)
  end

  get :show, map: "/album/:id" do
    @album = Album.find_by_id(params[:id])
    render 'album/show', layout: (request.xhr? ? false : true)
  end

  get :new do

  end

  post :create do

  end

end
