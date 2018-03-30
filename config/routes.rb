Rails.application.routes.draw do

  post 'add_to_cart' => 'cart#add_to_cart'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'

  root 'store_front#landing_page'

  get 'all_items' => 'store_front#all_items'

  get 'categorical' => 'store_front#items_by_category'
  get 'branding' => 'store_front#items_by_brand'

  delete 'remove_item' => 'cart#remove_item'
  patch 'update_item' => 'cart#update_item'

  post 'order_complete' => 'cart#order_complete'

  resources :users, only: [:index]
  patch 'update_user' => 'users#update_user_role', as: 'update_user_role'
  devise_for :users
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
