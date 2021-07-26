Rails.application.routes.draw do
  resources :songs, only: [:index, :show]
  resources :super_fans, only: [:index, :destroy]
  post "/reviews", to: "reviews#create"
  get "/song/top_charts", to: "songs#top_charts"
end
