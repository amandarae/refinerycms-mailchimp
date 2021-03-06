Refinery::Core::Engine.routes.draw do
  namespace :mailchimp, :path => '' do
    # Admin routes
    namespace :admin, :path => 'refinery' do
      resources :campaigns do
        member do
          get :send_options
          post :send_test
          post :send_now
          post :schedule
          post :unschedule
          post :posts
        end
      end
      resources :posts_campaigns do
        member do
          get :send_options
          post :send_test
          post :send_now
          post :schedule
          post :unschedule
          post :posts
          get :add_post
        end
      end
      resources :lists
    end

    # Frontend routes
    resource :subscriptions, :only => :create
  end
end
