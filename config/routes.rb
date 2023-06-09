Rails.application.routes.draw do
  devise_for :users

  root "chatrooms#index"

  resources :chatrooms, only: [:index, :show] do 
    resources :messages, only: [:create]
  end
end
