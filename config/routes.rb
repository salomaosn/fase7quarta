Rails.application.routes.draw do
  resources :pius do
    collection do
      post :add_reply
    end
  end
  devise_for :users
  root 'pages#index'
  resources :parties do
    collection do
      post :add_student
      post :add_attribute
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
