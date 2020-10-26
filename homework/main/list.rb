require 'yaml'
require_relative 'car'

class AutoList
    attr_reader :car_item 
    def  initialize
        load
        
    end

    def add_car(plate, model, name, surname)
        @car_item << Car.new(plate, model, name, surname)
        save 
        @car_item.last
    end
    def list_car
        @car_item.inspect

    end

    private

    def save 
        File.open("list_car.yml","w"){ |file| file.write(@car_item.to_yaml)}
    end 


    def load
        if File.exist?('list_car.yml') && YAML.load(File.read('list_car.yml'))
          @car_item = YAML.load(File.read('list_car.yml'))

        else
          @car_item = Array.new
          
        end

        @car_item
    end
    
end



