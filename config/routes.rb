Rails.application.routes.draw do
  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end

  root "home#index"
  resources :home, only: :index, concerns: :paginatable
  resources :shop, only: :index
  namespace :single do
    resources  :products, only: :show
  end
end
