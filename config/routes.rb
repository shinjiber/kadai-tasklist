Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: 'tasks#index'
  
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


