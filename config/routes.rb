Rails.application.routes.draw do
  get 'post/new'

  get 'post/show'

  get 'post/index'

  root 'welcome#index'

  resources :post
end
