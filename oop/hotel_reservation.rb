# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end

new_room = HotelReservation.new(customer_name: "Stacey", date: "2-14-2017", room_number: 143)

new_room.add_a_fridge
new_room.add_a_crib
new_room.add_a_custom_amenity("champagne showers")

puts new_room.customer_name + " has a grand old in room " + new_room.room_number.to_s + " on " + new_room.date + " with: " + new_room.amenities.flatten.join(' ,').to_s + "!"


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

