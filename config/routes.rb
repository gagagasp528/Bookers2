Rails.application.routes.draw do

  devise_for :users
  resources :books
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'home/about' => 'homes#about'
root to: 'homes#top'

end

