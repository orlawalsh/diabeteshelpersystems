Rails.application.routes.draw do
  devise_for :users
  resources :foodlogs do
  	resources :details
  end
  root 'foodlogs#index'
end
