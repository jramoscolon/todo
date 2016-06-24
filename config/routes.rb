Rails.application.routes.draw do

  get 'static_pages/index'

  devise_for :users
  resources :users
  resources :todo_lists do
    resources :todo_items do
    	member do
    		patch :complete
    	end
    end
  end

  # root "todo_lists#index"
  root 'static_pages#index'

end
