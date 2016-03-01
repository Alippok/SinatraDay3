require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/bio.rb')
require('json')


get '/' do 
  bio = Bio.new(name: "Alasdair Lippok", phone: "0131558030", address_first_line: "3 Argyle house", postcode: "eh13 zqf", location: "codebase")
  @script = bio.welcome_script
  @name = bio.name
  erb(:bio_page)
end