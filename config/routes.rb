Rails.application.routes.draw do
  root to: 'apps#index'
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  get '/:app_slug/:document_slug', to: 'document_versions#show'
end
