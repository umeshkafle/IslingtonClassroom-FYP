Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users,
          :controllers => {:invitations => 'users_invitations'}# user_invitations_controller.rb

  authenticate :user, ->(user) { user.student? } do
    get '/dashboard' => 'pages#student_dashboard'
    resources :students, only: [:edit, :update] do
    end
  end

  authenticate :user, ->(user) { user.lecturer? } do
    get '/dashboard' => 'pages#lecturer_dashboard'
    resources :lecturers, only: [:edit, :update] do
    end
  end



  resources :student_subjects
  resources :lecturer_subjects
  resources :courses do
    resources :subjects
  end


  root "student_dashboard#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end