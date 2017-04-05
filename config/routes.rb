Rails.application.routes.draw do

  root :to => "questions#index"
  resources :questions
  resources :firsts
  resources :lasts

end
