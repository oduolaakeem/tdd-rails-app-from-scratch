Rails.application.routes.draw do
  resources :books, only: [:new, :index, :create]
end
