Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'tweets#index'
  resources :tweets, only: [:index, :new, :create, :destroy, :edit, :update]
  # Defines the root path route ("/")
  # root "articles#index"
end
