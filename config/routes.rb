GuhRails::Application.routes.draw do

  namespace :api do
    namespace :v1 do

      resources :devices do
        resources :actions do
          member do
            post 'execute'
          end
        end
      end
      resources :device_classes
      resource  :introspect
      resources :rules
      resources :vendors do
        resources :device_classes
      end

    end
  end

  get 'introspect' => 'dummy#introspect'

  root :to => 'dummy#index'

end
