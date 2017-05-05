Rails.application.routes.draw do
  
  resources :contacts, :only => [:new, :create]
  get 'contact' => 'contacts#new'
  
  get 'about' => 'pages#about'
  root 'pages#home'
end
