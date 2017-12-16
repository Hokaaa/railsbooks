Rails.application.routes.draw do
  resources :books
  resources :products
  resources :orderitems
  resources :orders
  resources :customers
  
  root "products#index" #sets homepage
  
  get "customerdetails/:id" => 'customers#showaddress', :as => :customer_details #show user details
  #get 'orderdetails/:id' => 'orders#showorderinfo', as => :order_details #shows order details
  #get "customerorders/:id" => 'customers#showorders', as => :customer_orders #shows customers orders
  get '/category/:id' => 'products#category' #show categories
  post 'search' => 'products#search'  #posts search results
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
