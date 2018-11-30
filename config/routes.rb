Rails.application.routes.draw do
  # get 'users/index'

  # get 'users/show'

  # get 'users/edit'

  devise_for :users
  resources :users, only: [:index, :show, :edit, :update] do
  	resource :points, only: [:create, :update, :destroy]
  end
  # get 'posts/index'
  # get 'posts/show'
  # get 'posts/new'
  # get 'posts/edit'

  resources :posts do
  	resource :reviews, only: [:create, :destroy]
  end

  root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
