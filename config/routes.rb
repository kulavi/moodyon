  MoodyOn::Application.routes.draw do

    scope "static_pages" do
      get '/about' => 'static_pages#about'
      get '/blog'  => 'static_pages#blog'
      get '/developers' => 'static_pages#developers'
      get '/jobs'  => 'static_pages#jobs'
      get '/privacy' => 'static_pages#privacy'
      get '/terms'   => 'static_pages#terms'
      get '/contact' => 'static_pages#contact'
      get '/help'	 => 'static_pages#help'
    end

      
      resources :events
      resources :reasons
      resources :moods 
      resources :sub_moods

    match '/moods_for_selection' => 'home#moods_for_selection'
    match '/edit_profile' => 'home#edit_profile'
    match '/profile' => 'home#profile'
    match '/home/update_state_select/:id' => 'home#update_state_select'
    match '/home/update_city_select/:id' => 'home#update_city_select'
    match '/enter_sub_mood' => 'home#enter_sub_mood'
    match '/home/city_for_graph/:id' => 'home#city_for_graph' 
      

    
    
    
    devise_for :users,
      :controllers => { 
	      :sessions           => 'devise/sessions', 
	      :registrations      => 'devise/registrations', 
	      :confirmations      => 'devise/confirmations', 
        :passwords          => 'devise/passwords',
        :omniauth_callbacks => 'users/omniauth_callbacks'
      }, :path => '', :path_names => {
                        :sign_in => 'users/sign_in', 
                        :sign_out => 'users/sign_out', 
                        :sign_up => 'users/sign_up'
                      }
    resources :users
    
    
    
    root :to => "home#index"
  end