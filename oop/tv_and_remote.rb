# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Tv

  attr_accessor :power, :volume, :channel

  def initialize(input)
    @power = input[:power] || false
    @volume = input[:volume] || 5
    @channel = input[:channel] || 26
  end
end

class Remote < Tv

  attr_accessor :power, :volume, :channel

  def toggle_power
    @power = @power.!
    if @power == true
      puts "TV is on!"
    else
      puts "TV is off!"
    end
  end

  def increment_volume
    @volume = @volume + 10
  end

  def decrement_volume
    @volume = @volume - 10
  end

  def set_channel(channel)
    puts "Tv is on channel: " + channel.to_s
  end
end


samsung = Remote.new(power: false, volume: 10, channel: 5)

samsung.increment_volume

puts samsung.volume

samsung.set_channel(24)

samsung.toggle_power

samsung.toggle_power

