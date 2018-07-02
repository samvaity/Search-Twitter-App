Rails.application.routes.draw do
  get 'welcome/index'
  post 'welcome/search', to: 'welcome#search'
  # match 'welcome/search' => 'logins#create', :as => :create_login

  root 'welcome#index'
end
