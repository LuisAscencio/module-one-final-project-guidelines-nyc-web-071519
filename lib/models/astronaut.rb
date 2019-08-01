<<<<<<< HEAD

class Astronaut < ActiveRecord::Base
    has_many :searches
    has_many :launches
    has_many :rockets, through: :launches





 

    
=======
class Astronaut < ActiveRecord::Base
    has_many :launches
    has_many :rockets, through: :launches
    has_many :searches
>>>>>>> 01e07bd762431d33dd91f5563cb23e80b9016b7b
end