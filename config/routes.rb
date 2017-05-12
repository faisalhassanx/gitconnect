Rails.application.routes.draw do
  
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :contacts, :only => [:create]
  get 'contact' => 'contacts#new', as: 'new_contact'
  
  get 'about' => 'pages#about'
  root 'pages#home'
end
