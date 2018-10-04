Rails.application.routes.draw do

  root 'welcome#index'

  get 'welcome/index'

  get 'welcome/callback'

  get 'welcome/welcome'

  get 'companies/index', to: 'companies#list_companies'

  get 'projects/index', to: 'projects#list_projects'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
