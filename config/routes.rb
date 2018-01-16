Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'
  get 'static_pages/home', as: 'home'

  get 'static_pages/about', as: 'about'

  get 'static_pages/contact',as: 'contact'

  resources :cults
  resources :certs
  resources :pros
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
