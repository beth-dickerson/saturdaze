Rails.application.routes.draw do
  root 'static_pages#index'
  resources :dazers, to: 'static_pages#index'

  namespace :api do
    namespace :v1 do
      resources :dazers, only: [:index, :show]
    end
  end
end
