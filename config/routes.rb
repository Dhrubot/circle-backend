Rails.application.routes.draw do
  
  
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
