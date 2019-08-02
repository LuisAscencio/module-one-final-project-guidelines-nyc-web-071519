class Launch < ActiveRecord::Base
    belongs_to :astronaut
    belongs_to :rocket


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

    def self.future_dates
        all_dates = Launch.where(upcoming: true)
        all_dates.map do |launch|
            launch.launch_date
        end
    end

    def self.future_rockets
        all_states = Launch.where(upcoming: true)
        all_states.map do |launch|
            launch.rocket_name
        end
    end
end