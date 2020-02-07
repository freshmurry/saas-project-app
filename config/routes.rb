Rails.application.routes.draw do
  
  resources :user_projects
  resources :artifacts
  resources :tenants do
    resources :projects do
      get 'users', on: :member 
      put 'add_user', on: :member 
    end
  end
  resources :members
  get 'home/index'

   root :to => "home#index"
   
   
  # *MUST* come *BEFORE* devise's definitions (below)
  as :user do   
    match '/user/confirmation' => 'confirmations#update', :via => :put, :as => :update_user_confirmation
  end
  
  devise_for :users,
            path: '',		
            path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'registration'},
            controllers: {
              :omniauth_callbacks => "omniauth_callbacks",
              :registrations => "milia/registrations",
              :confirmations => "confirmations",
              :sessions => "milia/sessions", 
              :passwords => "milia/passwords"
            }
            
  get '/notifications' => 'notifications#index'            
            
  # match '/user/confirmation' => 'confirmations#update', :via => :put, :as => :update_user_confirmation          

  # match '/plan/edit' => 'tenants#edit', via: :get, as: :edit_plan
  # match '/plan/update' => 'tenants#update', via: [:put, :patch], as: :update_plan
  
end