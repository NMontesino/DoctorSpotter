class DoctorsController < ApplicationController

  #resource_url_specialties = https://api.betterdoctor.com/2016-03-01/specialties?user_key=
  def new
    # specialities()
    # byebug


  end

  def show
    # search_term = params['q'].capitalize





  end

  # def specialities
  #   response = RestClient.get 'https://api.betterdoctor.com/2016-03-01/specialties?user_key=3e4679b46d0072502aa1d79b922da235'
  #   json = JSON.parse response
  #
  #   if !json.nil?
  #    @specialities = json["data"].map { |item| item["name"] }
  #   else
  #    render :new
  #   end
  #
  # end



end
