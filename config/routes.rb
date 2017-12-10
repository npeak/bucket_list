Rails.application.routes.draw do

  #get 'staticpages/about'
  
  root 'lists#index'
  
 
  resources :lists do
    resources :destinations
    resources :activities 
  end 


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
