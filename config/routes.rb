Rails.application.routes.draw do
  resources :foodlogs
  root 'foodlogs#index'
end
