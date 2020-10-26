require "plate_converter/version"
require "json"

class Plaka 
  def parser(plate)
    plates = JSON.parse(File.read('cities.json'))
    city_hash = plates.select {|key,value|  key.to_i == plate.to_i }
    city_hash.select{|key,value| puts "- #{value}" }    
             
  end

end
