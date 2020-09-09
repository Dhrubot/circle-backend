Rails.application.routes.draw do
  
  get 'api/v1/get_current_user', to: 'api/v1/sessions#get_current_user'
  post 'api/v1/login', to: 'api/v1/sessions#create'

  namespace :api do
    namespace :v1 do

      resources :users do
        resources :follower_followings

        resources :posts do
          resources :likes
          resources :comments
        end

      end
    end
  end

end
