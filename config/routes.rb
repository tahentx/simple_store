Rails.application.routes.draw do
  
  root 'products#index'

  get 'products/new', to: 'products#new', as: 'new_product' 

  get 'products/:id', to: 'products#show', as: 'product'

  get 'products', to: 'products#index', as: 'products'

  post 'products', to: 'products#create'

  get 'products/show'

  get 'products/:id/edit', to: 'products#edit', as: 'edit_product'
  patch 'products/:id', to: 'products#update'

  get 'products/update'

  delete 'products/:id', to: 'products#destroy', as: 'delete_product'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
