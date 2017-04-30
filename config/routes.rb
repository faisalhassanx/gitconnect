Rails.application.routes.draw do
  
  resources :contacts, :only => [:new]
  
  get 'about' => 'pages#about'
  root 'pages#home'
end
