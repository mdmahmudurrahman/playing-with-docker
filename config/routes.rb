Rails.application.routes.draw do
  resources :users
  #get 'welcome/index'
  get 'welcome', to: 'welcome#index'
end
