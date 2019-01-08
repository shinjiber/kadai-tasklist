Rails.application.routes.draw do
 
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  root to: 'toppages#index'
 
 
 get 'login', to: 'sessions#new' 
 post 'login', to: 'sessions#create'
 get 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only:[:index, :show, :new, :create]
  
  resources :tasks
  
  
  #CRUD
  #get 'tasks/:id', to: 'kadaione#show'
  #post 'tasks', to: 'kadaione#create'
  #put 'tasks/:id', to: 'kadaione#update'
  #delete 'tasks/:id', to: 'kadaione#destroy'
  
  #index: supporting page for show
  #get 'tasks', to: 'kadaione#index'
  
  #new: formpage fo creation
  #get 'tasks/new', to: 'kadaione#new'
  
  #edit: formpage for update
  #get 'tasks/edit', to: 'kadaione#edit'
end


