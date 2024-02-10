# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'static_pages#home'

  resources :magic_links, only: %i[new create]
  resources :sessions, only: %i[new destroy]
end
