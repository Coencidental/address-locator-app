class Place < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  
  def address
    return [number, street, suburb, state, zip].join(", ")
  end
  
end
