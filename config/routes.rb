Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  get '/user/profile', to: 'pages#profile'

  get '/user/sent_requests', to: 'pages#sent_requests'

  get '/user/received_requests', to: 'pages#received_requests'

  get '/user/services', to: 'pages#services'

  resources :services do
    resources :service_requests, only: [:index, :create, :destroy, :new, :show]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
