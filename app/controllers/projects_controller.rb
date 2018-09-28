class ProjectsController < ApplicationController

  def index
    @company_id = params["company_id"]

    projects_request = RestClient.get("https://app.procore.com/vapid/projects?company_id=#{@company_id}", {"Authorization": "Bearer #{session[:access_token]}"})
    @projects = JSON.parse(projects_request)

    puts @projects
  end
end
