#### Speciality request
def specialties
  response = RestClient.get 'https://api.betterdoctor.com/2016-03-01/specialties?user_key=3e4679b46d0072502aa1d79b922da235'
  json = JSON.parse response

  if !json.nil?
   @specialties = json["data"].map { |item| item["name"] }
  else
   # render :new
  end

end

#### Insurance request
def insurances
  response = RestClient.get 'https://api.betterdoctor.com/2016-03-01/insurances?user_key=3e4679b46d0072502aa1d79b922da235'
  json = JSON.parse response

  if !json.nil?
   @insurances = json["data"].map { |item| item["name"] }
  else
   # render :new
  end

end

#### Doctor request
# def doctors
#   response = RestClient.get 'https://api.betterdoctor.com/2016-03-01/specialties?user_key=3e4679b46d0072502aa1d79b922da235'
#   json = JSON.parse response
#
#   if !json.nil?
#    @doctors = json["data"].map { |item| item["name"] }
#   else
#    # render :new
#   end
#
# end

#### Tables Creation
specialties().each do |specialty|
  Specialty.create(name: specialty)
end

insurances().each do |insurance|
  Insurance.create(name: insurance)
end

# doctors().each do |doctor|
#   Speciality.create(:name specialty)
# end

puts "Seeded"
################################
