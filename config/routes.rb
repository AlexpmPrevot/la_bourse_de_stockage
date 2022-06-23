Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users do
    resources :annonces, except: :index do
      patch :availability
      put :availability
    end
  end
  resources :annonces, only: :index
  # put 'users/:user_id/annonces/:id', to: 'annonces#availability'
end
