# frozen_string_literal: true

Rails.application.routes.draw do
  root 'items#index'
  get 'items/index'
  get 'items/show'
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
