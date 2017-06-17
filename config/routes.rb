Rails.application.routes.draw do
  
  root 'products#index'

  get 'products', to: 'products#index', as: 'products'

  get 'products/new'

  get 'products/create'

  get 'products/show'

  get 'products/edit'

  get 'products/update'

  get 'products/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
