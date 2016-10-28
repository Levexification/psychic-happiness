Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
    get 'welcome/index'

    root 'welcome#index'
    resources :post_tables do
      resources :comments
    end
    resources :user_tables
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
