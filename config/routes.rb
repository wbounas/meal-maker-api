# frozen_string_literal: true

Rails.application.routes.draw do
  resources :examples, except: %i[new edit]
  resources :ingredients, except: %i[new edit]
  resources :users, only: %i[index show]

  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
end
