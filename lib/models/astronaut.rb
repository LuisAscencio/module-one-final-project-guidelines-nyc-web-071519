class Astronaut < ActiveRecord::Base
    has_many :launches
    has_many :rockets, through: :launches
    has_many :searches
end