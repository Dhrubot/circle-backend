Rails.application.routes.draw do
  
  
  resources :follower_followings
  namespace :api do
    namespace :v1 do

      resources :users do
        resources :posts do
          resources :likes
          resources :comments
        end
      end
      resources :posts
      
    end
  end

end
