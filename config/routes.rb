Rails.application.routes.draw do
 
  get 'users/show'

  get 'users/new'

  get 'users/create'

 root to: "toppages#index"
 
 get  'signup', to: 'users#new'
    resources :users, only:[:index, :show, :new, :create, :edit, :update] do
    end
 end

