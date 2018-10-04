require 'json'
require 'rest-client'

class CompaniesController < ApplicationController

  def list_companies
    #The request to List Companies (along with /vapid/me) do not need the Procore-Company-ID Header
    companies_response = RestClient.get("https://api.procore.com/vapid/companies", {"Authorization": "Bearer #{session[:access_token]}"})
    @companies = JSON.parse(companies_response)

  end
end
