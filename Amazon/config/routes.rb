Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/index'
  get 'review/new'
  get 'review/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "home#index"
  
  # misc GETs
  get 'home/index'
  get 'home/about'
  get 'home/contact_us'
  get 'home/bill_splitter'
  
  # misc POSTs
  post 'home/thank_you'
  post 'home/bill_splitter'

  # products

  resources :products do
    resources :reviews, only: [:create, :destroy]
  end

end
