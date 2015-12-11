Recordly::App.controllers :search do

  get :search, map: "/" do
    @query = params[:q]
    @results = []

    @results += Artist.all
    @results += Album.all
    @results += Song.all
    render 'results'
  end

  get :search, map: "/search/(:q)" do
    @query = params[:q]
    @results = []

    @results += Artist.where("lower(name) LIKE ?", "%#{@query.downcase}%")
    @results += Album.where("lower(name) LIKE ?", "%#{@query.downcase}%")
    @results += Song.where("lower(name) LIKE ?", "%#{@query.downcase}%")
    render 'results', layout: (request.xhr? ? false : true)
  end
end
