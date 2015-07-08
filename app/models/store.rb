class Store < ActiveRecord::Base

	geocoded_by :google_map_address
  
  validates_presence_of :name, :address_1, :city, :state, :country
	after_validation :geocode
	
	def google_map_address
    "#{self.address_1}, #{self.address_2}, #{self.city}, #{self.state}, #{self.country}"
  end

end
