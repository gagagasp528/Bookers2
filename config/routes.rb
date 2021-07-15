Rails.application.routes.draw do

  get 'books/index'
  get 'books/show'
  get 'books/new'
  get 'books/edit'
  devise_for :users
   resources :books
    resources :users, only: [:index :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'homes#top'



end
