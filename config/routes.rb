Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/courses/:course_id/teams/', to: 'teams#index', as: 'teams_index'
  get '/courses', to: 'courses#index'
  get '/courses/:id/', to: 'courses#show', as: 'new_questionnaire'
  post 'courses/:course_id/questionnaires/', to: 'questionnaires#create', as: 'create_questionnaire'

  get '/teams/:team_id/dashboard', to: 'teams#dashboard', as: 'dashboard'
  get '/students_teams/', to: 'students_teams#index'
  get '/teams/:id', to: 'teams#show'
  post '/teams/:teams_id/students_teams', to: 'students_teams#create', as: 'students_team_join'

  get '/users/', to: 'users#index'
  post 'courses/:course_id/teams/', to: 'teams#create', as: 'create_team'
  get 'courses/:course_id/teams/new', to: 'teams#new', as: 'new_team'

  post 'courses', to: 'courses#create', as: 'create_course'
  post '/teams/:team_id/dashboard/chats', to: 'chats#create', as: 'create_message'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
