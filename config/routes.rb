# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root to: 'main#index'
  resources :teachers, only: [:index]
  resources :lessons, only: [:index]
  resources :groups, only: [:index]
end
