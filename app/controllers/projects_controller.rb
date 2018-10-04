class ProjectsController < ApplicationController

  def index

    @company_id = params["company_id"]

    if @company_id == "" || @company_id.blank?
        redirect_to welcome_welcome_path
    else
        projects_response = RestClient.get("https://app.procore.com/vapid/projects?company_id=#{@company_id}", {"Authorization": "Bearer #{session[:access_token]}"})
        @projects = JSON.parse(projects_response)
    end
  end
end
