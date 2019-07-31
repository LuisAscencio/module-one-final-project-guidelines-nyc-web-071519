class Rocket < ActiveRecord::Base
    has_many :launches
    has_many :astronauts, through: :launches
    

    def rocket_info
        puts "#{Rocket.first.rocket_name}'s first 
            flight was on #{Rocket.first.first_flight}. 
            The cost per launch of this rocket is 
            $#{Rocket.first.cost}."
    end


end