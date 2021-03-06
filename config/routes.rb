require 'api_constraints'

Rails.application.routes.draw do
  devise_for :users
  # Api definition
  #namespace :api, defaults: { format: :json },
  #                            constraints: { subdomain: 'api' }, path: '/'  do
   namespace :api, defaults: { format: :json }, path: '/' do
    scope module: :v1 do
         # constraints: ApiConstraints.new(version: 1, default: true)  do
         # We are going to list our resources here
         resources :users, :only => [:show, :create, :update, :destroy]
    end
  end 
end
