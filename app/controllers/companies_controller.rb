require 'json'
require 'rest-client'

class CompaniesController < ApplicationController

  def list_companies
    #This API request must be changed to have the root "api.procore.com and contain the Procore-Company-ID header"
    companies_response = RestClient.get("https://app.procore.com/vapid/companies", {"Authorization": "Bearer #{session[:access_token]}"})
    @companies = JSON.parse(companies_response)

  end
end
