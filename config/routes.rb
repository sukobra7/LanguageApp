Rails.application.routes.draw do
  devise_for :users, controllers: {  registrations: 'users/registrations', sessions: 'users/sessions' }
  root 'questions#index'
  resources :users
  resources :questions
end
