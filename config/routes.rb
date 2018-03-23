Rails.application.routes.draw do
  get 'pages/welcome'

  devise_for :users,
             path: '/',
             path_names: { sign_in: 'login', sign_out: 'logout' },
             skip: [:confirmation, :unlock, :registration, :sign_up, :password]
  resources :users
  resources :addresses

  devise_scope :user do
    authenticated :user do
      root to: 'pages#welcome', as: :authenticated_root
    end
    unauthenticated :user do
      root to: 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
