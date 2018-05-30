Rails.application.routes.draw do

  root 'application#landing'
  get '/profiles', to: 'application#index',  as: 'profiles'
  get '/account-type', to: 'application#account_type'
  resources :adopters, :cats, except: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
