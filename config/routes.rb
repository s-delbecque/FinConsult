Rails.application.routes.draw do
  devise_for :users

  root to: 'services#index'
  resources :services, only: [:index, :show, :new, :create] do
    resources :service_requests, only: [:create, :destroy, :new, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
