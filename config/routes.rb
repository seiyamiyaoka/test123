Rails.application.routes.draw do
 

  root 'home#top'
  
#   aboutページ
  get '/home/about' => 'home#about',as:'about_note'
  #   newページ
  get '/note' => 'notes#new',as:'new_note'
  post '/notes' => 'notes#create'
  
#   一覧ページ
  get '/note/index' => 'notes#index',as:'index_note'
#   詳細ページ
  get '/note/:id/show' => 'notes#show',as:'show_note'
# 編集ページ
  get'/note/:id/edit' => 'notes#edit',as:'edit_note'
  patch'/note/:id/' =>'notes#update',as:'update_note'
#   削除ページ
  delete'/note/:id/' => 'notes#destroy',as:'destroy_note'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
