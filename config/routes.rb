Rails.application.routes.draw do
  devise_for :users
  
  get "jquery-1", to: "pages#jquery_1"
  get "jquery-2", to: "pages#jquery_2"
  get "jquery-3", to: "pages#jquery_3"
  get "jquery-4", to: "pages#jquery_4"
  get "jquery-5", to: "pages#jquery_5"

  root "posts#index"

  resources :posts do
    member do
      post 'like', to: 'posts#like'
      post 'unlike', to: 'posts#unlike'
      post 'toggle_flag', to: 'posts#toggle_flag'
      post 'rate', to: 'posts#rate'
    end
  end
end
