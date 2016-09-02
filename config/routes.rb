Rails.application.routes.draw do


  #this was created by default with rails g controller home index
  #replace it
  #get 'home/index'
  root 'home#index'

  #defaults are commented out and replaced
  #get 'sessions/new'
  get 'login' => 'sessions#new'

  #get 'sessions/create'
  post 'login' => 'sessions#create'

  #get 'sessions/destroy'
  #delete 'logout' => 'sessions#destroy'
  #changed to get to make it easier
  get 'logout' => 'sessions#destroy'


  get 'secret' => 'home#secret'



  # For details on the DSL available within this file, 
  # see http://guides.rubyonrails.org/routing.html


end
