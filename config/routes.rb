Rails.application.routes.draw do
  devise_for :users
  get 'static_pages/header'

  get 'static_pages/footer'

  get 'static_pages/home'

  get 'static_pages/authors'
  
  get 'static_pages/aboutus'
get 'ages/problems'
get 'ages/formula'
  resources :'ages'
  get 'ages/new'
  resources :'static_pages'
  root 'static_pages#home'
end
