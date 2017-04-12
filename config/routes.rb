Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users,
          :controllers => {:invitations => 'users_invitations'}# user_invitations_controller.rb

  resources :courses do
    resources :subjects
  end


  root "courses#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
