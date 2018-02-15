class Contacts

   attr_accessor :first_name, :last_name, :job_title, :company, :contact_type

  @@contacts = []

  def initialize(attributes)
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
    @contact_type = attributes.fetch(:contact_type)
  end

  def self.all()
    @@contacts
  end

  def save()
    @@contacts.push(self)
  end

  def print_contact()
    [@first_name, @last_name, @job_title, @company, @contact_type]
  end
end

class Address < Contacts

  attr_accessor :street, :city, :state, :zip

  @@address = []

  def initialize(attributes)
    @street = attributes.fetch(:street)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip = attributes.fetch(:zip)
  end

  def self.all()
    @@address
  end

  def add_address()
  end
end
