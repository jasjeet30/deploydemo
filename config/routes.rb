Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
  	namespace :v1 do
  		resources :courses
      post 'auth/login', to: 'authentication#authenticate'
      post 'signup', to: 'users#create'
  	end
  end
  resources :courses do
  	resources :subjects do
  		resources :lessons
  	end
  end

  
end
