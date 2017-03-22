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

class Remote
  def initialize(input_options)
    @tv = input_options["tv"]
  end

  def toggle_power
    #turns tv on or off....changes it's status
    if @power == "on"
      @power = "off"
    elsif @power == "off"
      @power = "on"
    end
  end

  def increment_volume
    @volume += 1
    #increase tv volume by 1
  end

  def decrement_volume
    @volume -= 1
    #decrease tv volume by 1
  end

  def set_channel(channel)
    @channel = channel
    #set channel to whatever number you give it
  end

end

class Tv < Remote
  attr_accessor :power, :volume, :channel
  def initialize(input_options)
    @power = input_options["power"]
    @volume = input_options["volume"]
    @channel = input_options["channel"]
  end
end



tv1 = Tv.new("power" => "on", "volume" => 5, "channel" => 10)


puts "TESTING if Tv power is writable/readable..."
tv1.power = "off"

if tv1.power == "off"
  puts "PASS!!!"
else
  puts "FAIL!!!"
end
puts

puts "TESTING if Tv volume is writable/readable..."
tv1.volume = 8

if tv1.volume == 8
  puts "PASS!!!"
else
  puts "FAIL!!!"
end
puts

puts "TESTING if Tv channel is writable/readable..."
tv1.channel = 3

if tv1.channel == 3
  puts "PASS!!!"
else
  puts "FAIL!!!"
end
puts

puts "TESTING if toggle_power changes status of on to off..."

tv1.toggle_power

if tv1.power == "on"
  puts "PASS!!!"
else
  puts "FAIL!!!"
end
puts

puts "TESTING if increment_volume increases volume by 1..."

tv1.volume = 8
tv1.increment_volume
if tv1.volume == 9
  puts "PASS!!!"
else
  puts "FAIL!!!"
end
puts

puts "TESTING if decrement_volume increases volume by 1..."

tv1.volume = 8
tv1.decrement_volume
if tv1.volume == 7
  puts "PASS!!!"
else
  puts "FAIL!!!"
end
puts

puts "TESTING if set_channel changes the channel to your argument..."

tv1.channel = 9
tv1.set_channel(27)
if tv1.channel == 27
  puts "PASS!!!"
else
  puts "FAIL!!!"
end
puts

