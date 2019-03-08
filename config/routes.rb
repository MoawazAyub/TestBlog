Rails.application.routes.draw do
  resources :products
  #get 'comments/index'
#resources :photos do
#  collection do
#    get 'search'
#  end
#end
	resources :posts do
		resources :comments
	end
  get 'clients/index'
  post 'clients/index'
  post 'clients/show'

  
  resources :messages

  #get 'posts/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
