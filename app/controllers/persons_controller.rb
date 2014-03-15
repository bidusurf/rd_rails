require 'rd_challenge'

class PersonsController < ApplicationController
  
  skip_before_action :verify_authenticity_token
  
  def new
  	@url = params[:url] || ''
  	@user = params[:user] || ''
  	@token = params[:token] || ''
  	@name = params[:name] || ''
    @last_name = params[:last_name] || ''
    @company = params[:company] || ''
    @email = params[:email] || ''
    @phone = params[:phone] || ''
    @website = params[:website] || ''
    @job_title = params[:job_title] || ''
  end

  def add_person
  	RDChallenge.add_person(params)
  end
end
