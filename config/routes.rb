Rails.application.routes.draw do
<<<<<<< HEAD

=======
  
>>>>>>> eff0416e2aa769ee2885a41d4ec1ab475e8c8198
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
<<<<<<< HEAD

    
=======
   
   
>>>>>>> eff0416e2aa769ee2885a41d4ec1ab475e8c8198
  # *MUST* come *BEFORE* devise's definitions (below)
  as :user do   
    match '/user/confirmation' => 'confirmations#update', :via => :put, :as => :update_user_confirmation
  end
<<<<<<< HEAD

  devise_for :users, :controllers => { 
    :registrations => "registrations",
    :confirmations => "confirmations",
    :sessions => "milia/sessions", 
    :passwords => "milia/passwords", 
  }
  
  match '/plan/edit' => 'tenants#edit', via: :get, as: :edit_plan
  match '/plan/update' => 'tenants#update', via: [:put, :patch], as: :update_plan


end
=======
  
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
>>>>>>> eff0416e2aa769ee2885a41d4ec1ab475e8c8198
