class Launch < ActiveRecord::Base
    belongs_to :astronaut
    belongs_to :rocket
end