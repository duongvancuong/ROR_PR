Rails.application.routes.draw do
  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end

  root "home#index", concerns: :paginatable
  resources :shop, only: :index
end
