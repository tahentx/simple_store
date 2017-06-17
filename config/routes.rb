Rails.application.routes.draw do
  
  root 'products#index'

  get 'products/new', to: 'products#new', as: 'new_product' 

  get 'products/:id', to: 'products#show', as: 'product'

  get 'products', to: 'products#index', as: 'products'

  post 'products', to: 'products#create'

  get 'products/show'

  get 'products/edit'

  get 'products/update'

  get 'products/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
