Rails.application.routes.draw do
  get 'welcome/index'
  post 'welcome/search', to: 'welcome#search'
  get 'shared/tweets'

  root 'welcome#index'
end
