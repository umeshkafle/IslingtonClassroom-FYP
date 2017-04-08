Rails.application.routes.draw do

  devise_for :users
  resources :courses
  resources :subjects


  root "student_dashboard#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
