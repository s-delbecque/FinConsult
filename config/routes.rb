Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  devise_for :users
  get 'service_requests/new'
  get 'service_requests/create'
  get 'service_requests/show'
  get 'service_requests/destroy'
  get 'services/index'
  get 'services/new'
  get 'services/create'
  get 'services/show'
  get 'services/update'
  get 'services/destroy'
  get 'services/edit'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
