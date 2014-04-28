GuhRails::Application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      
      resources :devices do
        collection do
          get 'supported' => 'devices#supported'
        end
      end
      resource  :introspect
      resources :rules
      
    end
  end
  
  root :to => 'dummy#index'
  
end
