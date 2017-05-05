Rails.application.routes.draw do
  
  resources :contacts, :only => [:create]
  get 'contact' => 'contacts#new', as: 'new_contact'
  
  get 'about' => 'pages#about'
  root 'pages#home'
end
