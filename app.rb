require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')
require('pry')

get('/') do
  @contact_list = Contacts.all()
  erb(:input)
end

post('/') do
  first_name = params["first_name"]
  last_name = params["last_name"]
  company = params["company"]
  job_title = params["job_title"]
  contact_type = params["contact_type"]

  contact = Contacts.new(params)
  contact.save()
  @contact_list = Contacts.all
  
  erb(:output)
end
