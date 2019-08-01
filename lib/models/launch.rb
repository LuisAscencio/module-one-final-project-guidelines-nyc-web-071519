

class Launch < ActiveRecord::Base
    belongs_to :astronaut
    belongs_to :rocket


    # Method to find all launches for this rocket
    # def self.all_launches(fav_rocket)
    #     Launch.where(rocket_name: fav_rocket)
    # end



    # get future flights
    def self.future_missions
        all_missions = Launch.where(upcoming: true)
        all_missions.map do |launch|
            launch.mission_name
        end
    end

    def self.future_sites
        all_sites = Launch.where(upcoming: true)

        all_sites.map do |launch|
            launch.launch_site
        end
    end

    def self.future_states
        all_states = Launch.where(upcoming: true)
        all_states.map do |launch|
            launch.launch_state
        end
    end


end