require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/bio.rb')
require_relative('./models/wordformatter.rb')
require('json')


get '/' do 
  bio = Bio.new(name: "Alasdair Lippok", phone: "0131558030", address_first_line: "3 Argyle house", postcode: "eh13 zqf", location: "codebase")
  @script = bio.welcome_script
  @name = bio.name
  erb(:bio_page)
end

get '/address' do
  content_type(:json)
  bio = Bio.new(name: "Alasdair Lippok", phone: "0131558030", address_first_line: "3 Argyle house", postcode: "eh13 zqf", location: "codebase")
  wordformatter = Wordformatter.new
  
  altered_address = wordformatter.upcase(bio.address_first_line)
  altered_postcode = wordformatter.upcase(bio.postcode)
  altered_location = wordformatter.upcase(bio.location)
    result = {
    address_first_line: altered_address,
    building: altered_location,
    postcode: altered_postcode,
    phone: bio.phone,
  }

  return result.to_json
  
end

get '/:word1/:word2' do
  wordformatter = Wordformatter.new
 
 @string = wordformatter.camelcase_two(params[:word1], params[:word2])
 erb(:camel_case)#Stuck on using multiple erb pages and yields
end



get '/:words' do
  wordformatter = Wordformatter.new
  @string = wordformatter.camelcase(params[:words])
  erb(:test)
end