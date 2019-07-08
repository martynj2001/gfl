
Rails.application.routes.draw do

  devise_for :users, controllers: {registrations: "registrations"}

  root 'posts#home'
  
  resources :posts do
    get 'home', on: :collection
  end

  get '/sitemap', to: 'posts#sitemap'

end

