Rails.application.routes.draw do
  
  resources :contacts, :only => [:new, :create]
  
  get 'about' => 'pages#about'
  root 'pages#home'
end
