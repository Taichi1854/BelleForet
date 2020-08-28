Rails.application.routes.draw do


  devise_for :customers, controllers: {
    sessions: "customer/devises/sessions",
    passwords: "customer/devises/passwords",
    registrations: "customer/devises/registrations",
  }


  devise_for :admins, controllers: {
    sessions: "admin/devises/sessions",
    passwords: "admin/devises/passwords",
    registrations: "admin/devises/registrations",
  }


  root 'customer/homes#top'


  get 'homes/about' => 'customer/homes#about', as: 'about'
  get 'homes/party' => 'customer/homes#party', as: 'party'
  get 'homes/wedding' => 'customer/homes#wedding', as: 'wedding'
  get 'inquiries/complete' => 'customer/inquiries#complete', as: 'inquiries_complete'
  post 'reservations/confirm' => 'customer/reservations#confirm', as: 'reservations_confirm'
  get 'reservations/complete' => 'customer/reservations#complete', as: 'reservations_complete'


  get 'admins/home/top' => 'admin/homes#top', as: 'admin_top'


  scope module: :customer do
    resources :customers, only: [:show, :edit, :update, :destroy]
    resources :reservations, only: [:new, :index, :create, :destroy]
    resources :topics, only: [:index, :show] do
  	  resource :favorites, only: [:create, :destroy]
  	  resources :comments, only: [:create, :destroy]
    end
  end


  namespace :admin do
    resources :topics, only: [:new, :index, :show, :edit, :create, :update, :destroy]
    resources :inquiries, only: [:index, :show]
    resources :reservations, only: [:index, :show]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end