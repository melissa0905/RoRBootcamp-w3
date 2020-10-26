require 'json'
require_relative'../plate_converter/lib/plate_converter'
require_relative 'car'
require_relative 'list'

print "Name:"
name = gets.chomp

print "Surname:"
surname = gets.chomp

print "Plate:" 
plate = gets.chomp


if 0 < plate.to_i && plate.to_i < 82
    city = Plaka.new
    city.parser(plate)
else
    puts "Error!!..Plate format is not suitable. (Enter between 01-81)"
    exit!
end


print  "Model:"
model = gets.chomp


car = Car.new(plate,model,name,surname)

auto_record_list = AutoList.new
auto_record_list.add_car(plate,model,name,surname)


puts "#{plate} vehicle was added... "
