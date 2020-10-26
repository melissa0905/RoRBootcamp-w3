require 'json'

class Car

    attr_accessor :plate, :model, :name, :surname
    def initialize(plate, model, name, surname)
        @plate=plate
        @model=model
        @name=name
        @surname =surname
    end
    def auto_record
        print "- #{plate} - #{model} - #{name} - #{surname}"
    end
end




