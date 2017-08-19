Rails.application.routes.draw do
  root to: 'fan_arts#index'
  resources :fan_arts
end
