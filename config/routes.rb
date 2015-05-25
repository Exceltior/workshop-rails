Rails.application.routes.draw do

  resources :to_dos

  root 'to_dos#index'

end
