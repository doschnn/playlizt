Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, only: [:sessions], path_names: { sign_in: 'login', sign_out: 'logout' }

  root to: 'pages#home'
end
