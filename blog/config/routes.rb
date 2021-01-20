Rails
  .application
  .routes
  .draw do
    root 'pages#home'
    get 'about', to: 'pages#about'
    get 'signup', to: 'users#new'
    post 'users', to: 'users#create'
    resources :articles
    resources :users, except: [:new]
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
