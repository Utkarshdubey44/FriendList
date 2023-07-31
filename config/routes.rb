Rails.application.routes.draw do
  # resorces
  # get 'personal_details/index'
  # get 'personal_details/show'
  # get 'personal_details/create'
  # get 'personal_details/edit'
  # get 'personal_details/destroy'

  root 'personal_details/index', as: 'personal_details'
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
