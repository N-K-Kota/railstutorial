Rails.application.routes.draw do


  get 'login'=>'sessions#new'
  post 'login'=>'sessions#create'
  delete 'logout'=>'sessions#destroy'
  get 'signup'=>'users#new'
  get 'help'=>'static_pages#help'
  get 'about'=>'static_pages#about'
  get 'contact'=>'static_pages#contact'
  root 'static_pages#home'
  resources :users
  resources :account_activations,only:[:edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
