Rails.application.routes.draw do
  devise_for :users,
             path: '/',
             path_names: { sign_in: 'login', sign_out: 'logout' },
             skip: [:confirmation, :unlock, :registration, :sign_up, :password]
end
