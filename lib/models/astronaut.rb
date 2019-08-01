

class Astronaut < ActiveRecord::Base
    has_many :searches
    has_many :launches
    has_many :rockets, through: :launches



    def self.get_id
        Astronaut.last.id

        
    end
end





 

    
