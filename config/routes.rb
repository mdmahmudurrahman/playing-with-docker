Rails.application.routes.draw do
  #get 'welcome/index'
  get 'welcome', to: 'welcome#index'
end
