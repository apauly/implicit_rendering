Rails.application.routes.draw do
  resources :users do
    get :something, on: :member
  end
  resources :posts, only: :create
end
