# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :administration do
    get 'users/index'
  end
  mount Lockup::Engine, at: '/lockup'
  root 'items#index'

  namespace :administration do
    resources :items
    resources :profiles
    resources :users
  end

  resource :cart, only: %i[show update destroy]
  resource :profile, only: %i[show edit update destroy]
  resources :charges
  resources :items
  resources :orders, only: %i[index create show]

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    confirmations: 'users/confirmations',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    unlocks: 'users/unlocks'
  }

  devise_for :admin, controllers: {
    sessions: 'admins/sessions',
    confirmations: 'admins/confirmations',
    registrations: 'admins/registrations',
    passwords: 'admins/passwords',
    unlocks: 'admins/unlocks'
  }
end
