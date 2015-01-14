Rails.application.routes.draw do
  resources :books, only: [:new, :index, :create, :show] do
    resources :loans, only: [:new, :index, :create]
  end
end
