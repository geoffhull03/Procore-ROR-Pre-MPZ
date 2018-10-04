Rails.application.routes.draw do

  root 'welcome#index'

  get 'welcome/sign_in', to: 'welcome#index'

  get 'welcome/callback'

  get 'welcome/home_page', to: 'welcome#home_page'

  get 'companies/index', to: 'companies#list_companies'

  get 'projects/index', to: 'projects#list_projects'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
