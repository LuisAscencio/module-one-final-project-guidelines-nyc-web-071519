

class Astronaut < ActiveRecord::Base
    has_many :searches
    has_many :launches
    has_many :rockets, through: :launches
end





 

    
