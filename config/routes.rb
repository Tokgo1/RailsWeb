Rails.application.routes.draw do
  get 'sessions/new'

  # get 'static_pages/home'
  # get 'static_pages/help'
  # get 'static_pages/about'
  # get 'static_pages/contact'
  get '/help', to: 'static_pages#help' #, as: 'helf'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'


  resources :microposts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # 有关此文件中可用DSL的详细信息，请参见http://guides.rubyonrails.org/routing.html

  # root 'application#hello'
  # root 'users#index'
  root 'static_pages#home'

  # 注册
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  # 登录和退出
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

end
