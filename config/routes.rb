Rails.application.routes.draw do
  
  
  
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
