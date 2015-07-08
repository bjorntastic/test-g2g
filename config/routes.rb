Rails.application.routes.draw do

  resources :weeds

  get '/how-it-works', to: 'pages#how'
  get '/about-us', to: 'pages#about'
  get '/checkout', to: 'pages#checkout'

  root "weeds#index"

end
