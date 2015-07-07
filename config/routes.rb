Rails.application.routes.draw do

  resources :weeds

  root "weeds#index"

end
