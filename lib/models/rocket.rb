class Rocket < ActiveRecord::Base
    has_many :launches
    has_many :astronauts, through: :launches
end