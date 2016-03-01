class Bio

attr_reader(:name, :phone, :address_first_line, :postcode, :location)
def initialize(params)
  @name = params[:name]
  @phone = params[:phone]
  @address_first_line = params[:address_first_line]
  @postcode = params[:postcode]
  @location = params[:location]
end

def welcome_script
  script = "Welcome to my website"
  return script
end




end