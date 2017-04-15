Rails.application.routes.draw do

  get 'lecturer_subject/index'

  get 'lecturer_subject/show'

  get 'lecturer_subject/new'

  get 'lecturer_subject/create'

  get 'lecturer_subject/edit'

  get 'lecturer_subject/update'

  get 'lecturer_subject/destroy'

  get 'student_subject/index'

  get 'student_subject/show'

  get 'student_subject/new'

  get 'student_subject/create'

  get 'student_subject/edit'

  get 'student_subject/update'

  get 'student_subject/destroy'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users,
          :controllers => {:invitations => 'users_invitations'}# user_invitations_controller.rb

  resources :courses do
    resources :subjects
  end


  root "student_dashboard#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
