class Astronaut < ActiveRecord::Base
    has_many :launches
    has_many :rockets, through: :launches
    has_many :searches

    # Get astronaut's ID
    def self.get_id
        Astronaut.last.id
    end
end