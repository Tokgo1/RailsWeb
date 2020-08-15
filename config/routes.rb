Rails.application.routes.draw do
  resources :microposts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # 有关此文件中可用DSL的详细信息，请参见http://guides.rubyonrails.org/routing.html

  # root 'application#hello'
  root 'users#index'
end
