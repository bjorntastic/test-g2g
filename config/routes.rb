Rails.application.routes.draw do

  resources :weeds

  get '/how-it-works', to: 'pages#how'
  get '/about-us', to: 'pages#about'
  get '/checkout', to: 'pages#checkout'
  get '/admin', to: 'pages#admin'

  root "weeds#index"

end
