# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'families#index'
  resources :families do
    resources :family_members
    resources :additional_family_members
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
