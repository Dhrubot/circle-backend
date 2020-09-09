Rails.application.routes.draw do
  
  
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
