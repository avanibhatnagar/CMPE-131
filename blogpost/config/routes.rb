Rails.application.routes.draw do
  #get 'admin/index'
  #get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users

  get 'admin' => 'admin#index'
  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get 'home', to: 'application#home'
  get 'test', to: 'application#test'
  get 'demo', to: 'application#demo'
  get 'users/new', to: 'users#new'
  root 'application#home'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
