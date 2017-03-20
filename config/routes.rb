Rails.application.routes.draw do
  resources :invoices, only: [:new, :create, :show] do
    member do
      post 'void'
      post 'pay'
    end
  end

  root 'dashboard#index'
end
