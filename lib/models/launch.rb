class Launch < ActiveRecord::Base
    belongs_to :astronaut
    belongs_to :rocket

    # Method to find all launches for this rocket
    def self.all_launches(fav_rocket)
        Launch.where(rocket_name: fav_rocket)
    end

    # get future flights
    def self.future_flights
        Launch.where(upcoming: true)
    end




end