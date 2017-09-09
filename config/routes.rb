Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, except: [:destroy, :index]
      post 'user_token' => 'user_token#create'
      resources :complaints do
        post 'comments' => 'comments#create'
      end
    end
  end
end
