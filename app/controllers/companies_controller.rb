require 'json'
require 'rest-client'

class CompaniesController < ApplicationController

  def index
    companies_request = RestClient.get("https://app.procore.com/vapid/companies", {"Authorization": "Bearer #{session[:access_token]}"})
    @companies = JSON.parse(companies_request)

    puts @companies
  end
end
