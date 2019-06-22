
Rails.application.routes.draw do

  devise_for :users, controllers: {registrations: "registrations"}

  root 'posts#index'
  
  resources :posts do
    get 'home', on: :collection
  end

end

