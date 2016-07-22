Sw4::Application.routes.draw do    

  namespace(:admin){ resources :abouts }

  namespace(:admin){ resources :teams }

  post '/tinymce_assets' => 'tinymce_assets#create'                              
  resources :services, :only => [:index, :show]
  resources :customers, :only => [:index]
  resources :about_us, :only => [:index]
  resources :articles, :only => [:show]
  resources :contacts, :only => [:new, :show, :create]
  resources :homes, :only => [:index]
  resources :user_sessions
  resources :users
  resources :teams
  resources :portifolios, :only => [:show]
  
  namespace(:admin){
    resources :abouts,:only => [:index]
    resources(:portifolios){
      resources :portifolio_images
    }
    resources :services
    resources :customers
    get 'articles/tags/:tag', :to => 'articles#index', :as => :tag
    resources :articles 
    resources :businesses
    resources :contacts, :only => [:index, :show, :destroy]
    resources :highlights
    resources :statics, :only => [:index]
    resources(:categories){
      resources :items
      resources :subcategories
    }        
    root :to => 'statics#index'
  }
  
  
  root :to => 'homes#index'  
  match 'register' => "users#new"
  match 'login' => 'user_sessions#new'  
  match 'logout' => 'user_sessions#destroy'
  match 'articles' => "articles#new"
  match 'teams' => "teams#new"
  
  
  
  
  
  
  
  
  
end
