Rails.application.routes.draw do
  root 'home#index'
  post '/', to: 'home#serch'
end
