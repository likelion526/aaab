Rails.application.routes.draw do
  
  
  get 'goals/choice'
  get 'goals/receiver'
  resources :fields do
    resources :habits, only: [:create]
  end
  
   ########## field ###########
  
  get 'fields/index'
  get 'fields/choice' => "fields#choice"
  get 'fields/main'
  get 'fields/new'
  get 'fields/receive'
  post 'fields/create'
  
  
  
  ########## habit #############
  
  get 'habits/create'
  get 'habits/update'



  get 'fields/edit/:id' => 'fields#edit'
  get 'fields/show/:id' => 'fields#show'
  get 'fields/delete/:id' => 'fields#delete'
  post 'fields/update/:id' => 'fields#update'
 
  

root 'fields#main'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
