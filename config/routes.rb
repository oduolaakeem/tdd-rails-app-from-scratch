Rails.application.routes.draw do
  resources :books, only: [:new, :index, :create, :show] do
    resource :loan, only: [:new]
  end
end
