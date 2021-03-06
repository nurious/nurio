Rails.application.routes.draw do
  resources :requests

  get 'splash/index'

  get 'leaderboard/show'

  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  devise_for :users
  # resources :entries

  # resources :categories

  # resources :positions

  # resources :organizations

  # resources :organizations do
  #    resources :departments, :only => [:index, :create, :new]
  # end

  # resources :departments, :except => [:index, :create, :new]

  # resources :positions do
  #   resources :categories do
  #     resources :entries
  #   end
  # end

resources :organizations do
  resources :departments, only: [:index, :new, :create]
end

resources :departments, except: [:index, :new, :create] do
  resources :positions, only: [:index, :new, :create]
end

resources :positions, except: [:index, :new, :create] do
  resources :categories, only: [:index, :new, :create]
end

resources :categories, except: [:index, :new, :create] do
  resources :entries, only: [:index, :new, :create]
end

resources :entries, except: [:index, :new, :create]

  # resources :departments do
  #   resources :positions
  # end 

  # resources :positions do
  #   :categories
  # end

  # resources :categories do
  #   resources :entries    
  # end


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'splash#index'

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
