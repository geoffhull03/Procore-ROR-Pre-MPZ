class ProjectsController < ApplicationController


  def list_projects
    @company_id = params["company_id"]

    if @company_id == "" || @company_id.blank?
        redirect_to welcome_home_page_path
    else
        #This API request has the Procore-Company-ID header
        projects_response = RestClient.get("https://api.procore.com/vapid/projects?company_id=#{@company_id}", {"Authorization": "Bearer #{session[:access_token]}", "Procore-Company-ID": "#{@company_id}"})
        @projects = JSON.parse(projects_response)
    end
  end
end
