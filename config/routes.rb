# frozen_string_literal: true

Rails.application.routes.draw do
  resources :reminders, except: [:new, :edit]
  resources :jobs, except: [:new, :edit]
  resources :companies, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  get '/companies/:company_id/jobs' => 'jobs#index'
  post '/companies/:company_id/jobs' => 'jobs#create'
  resources :users, only: [:index, :show]
end
