Rails.application.routes.draw do
  
  
  root "mains#index"
  get 'mains/index'
  post 'goals/choice'
  get 'goals/receiver'
 
  ########## field ###########
  
  get 'fields/main1'
  get 'fields/index'
  get 'fields/choice' => "fields#choice"
  get 'fields/main'
  get 'fields/new'
  get 'fields/receive'
  post 'fields/create'
  get 'fields/edit/:id' => 'fields#edit'
  get 'fields/show/:id' => 'fields#show'
  post 'fields/update/:id' => 'fields#update'
  get 'fields/destroy/:id' => 'fields#destroy'
  
  # get 'fields/:field_id/habits/:habit_id' => 'fields#destroy', as: :AAfield
  
  ########## habit #############
  
#   get 'habits/destroy/:id' => 'habits#destroy'
#   get 'habits/create'


  


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  devise_for :users
  resources :fields do
    resources :habits
  end
  
end