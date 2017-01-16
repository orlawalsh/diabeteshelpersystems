Rails.application.routes.draw do
  resources :foodlogs do
  	resources :details
  end
  root 'foodlogs#index'
end
