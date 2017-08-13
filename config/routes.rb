Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :reviews
      resources :user_restaurant_tags
      resources :tags
      resources :user_restaurants
      resources :restaurants
      resources :users
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
