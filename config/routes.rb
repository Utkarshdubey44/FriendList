Rails.application.routes.draw do
  devise_for :users
  # resorces
  # get 'personal_details/index'
  # get 'personal_details/show'
  # get 'personal_details/create'
  # get 'personal_details/edit'
  # get 'personal_details/destroy'

  resources :personal_details
  root 'personal_details#index', as: 'details'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
