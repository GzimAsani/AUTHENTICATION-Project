Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'pages#home'
  resources :blogs, only: [:new, :create, :index, :delete]
end
