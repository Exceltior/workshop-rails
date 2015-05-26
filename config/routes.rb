Rails.application.routes.draw do

  devise_for :users

  resources :to_dos

  root 'to_dos#index'

end
