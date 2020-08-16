Rails.application.routes.draw do


  devise_for :customers, controllers: {
    sessions: "customer/devise/sessions",
    passwords: "customer/devise/passwords",
    registrations: "customer/devise/registrations",
  }


  devise_for :admins, controllers: {
    sessions: "admin/devise/sessions",
    passwords: "admin/devise/passwords",
    registrations: "admin/devise/registrations",
  }


  root 'customer/homes#top'


  get 'homes/about' => 'customer/homes#about', as: 'about'
  get 'homes/party' => 'customer/homes#party', as: 'party'
  get 'homes/wedding' => 'customer/homes#wedding', as: 'wedding'
  get 'homes/topic' => 'customer/homes#topic', as: 'topic'
  post 'inquiries/confirm' => 'customer/inquiries/confirm', as: 'confirm'
  get 'inquiries/complete' => 'customer/inquiries/complete', as: 'complete'


  get 'admins/home/top' => 'admin/homes#top', as: 'admin_top'


  scope module: :customer do
  	resource :favorites, only: [:create, :destroy]
  	resources :comments, only: [:create, :destroy]
  end


  namespace :admin do
    resources :topics, only: [:index, :show, :edit, :create, :update]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end