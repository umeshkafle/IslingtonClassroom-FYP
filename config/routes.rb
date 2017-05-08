Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users,
          :controllers => {:invitations => 'users_invitations'}# user_invitations_controller.rb

          resources :conversations, only: [:create] do
            member do
              post :close
            end
            resources :messages, only: [:create]
          end

  authenticate :user, ->(user) { user.student? } do
    root 'student_dashboard#index'
    resources :students, only: [:edit, :update]
  end

  authenticate :user, ->(user) { user.lecturer? } do
    root 'lecturer_dashboard#index'
    resources :lecturers, only: [:edit, :update]
  end
  resources :subjects do
    resources :materials, only: [:new, :create]
    resources :assignments, only: [:new, :create]
    resources :announcements, only: [:new, :create]
  end
  resources :student_subjects do
    resources :materials, only: [:new, :create]
    resources :assignments, only: [:new, :create]
    resources :announcements, only: [:new, :create]
  end
  resources :lecturer_subjects do
    resources :materials, only: [:new, :create]
    resources :assignments, only: [:new, :create]
    resources :announcements, only: [:new, :create]
  end
  resources :lecturer_subjects
  resources :student_subjects
  resources :courses do
    resources :subjects
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end