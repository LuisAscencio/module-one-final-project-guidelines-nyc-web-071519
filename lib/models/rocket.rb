<<<<<<< HEAD
require 'pry'
require 'terminal-table'

class Rocket < ActiveRecord::Base
    has_many :launches
    has_many :astronauts, through: :launches


    
def self.most_expensive
    Rocket.all.max_by do |rock|
        rock.cost
    end
end


def self.mass
    Rocket.all.max_by do |rock|
        rock.mass
    end
    
end



def self.stats

    table = Terminal::Table.new :title => "Rockets Stats", :headings => ['Rocket', 'Cost', "Height", "Diameter", "Mass"] do |t|
        t << [Rocket.first.rocket_name,Rocket.first.cost, "#{Rocket.first.height} ft.", "#{Rocket.first.diameter} ft.", "#{Rocket.first.mass} lb."    ]
        t << :separator
        t.add_row [Rocket.second.rocket_name, Rocket.second.cost, "#{Rocket.second.height} ft.", "#{Rocket.second.diameter} ft.", "#{Rocket.second.mass} lb." ]
        t.add_separator
        t.add_row [Rocket.third.rocket_name, Rocket.third.cost, "#{Rocket.third.height} ft.", "#{Rocket.third.diameter} ft.", "#{Rocket.third.mass} lb." ]
        t.add_separator
        t.add_row [Rocket.fourth.rocket_name, Rocket.fourth.cost, "#{Rocket.fourth.height} ft.", "#{Rocket.fourth.diameter} ft.", "#{Rocket.fourth.mass} lb."]
      end
      puts table
    
end



# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

    def self.falcon_1
   
        table = Terminal::Table.new :title => "#{Rocket.first.rocket_name}", :headings => ["Cost", "Height", "Diameter", "Mass"] do |t|
            t << [Rocket.first.cost, "#{Rocket.first.height} ft.", "#{Rocket.first.diameter} ft.", "#{Rocket.first.mass} lb."]
        end
            table2 = Terminal::Table.new  do |t|
               
                t<<[Rocket.first.description]
                t.style = {:border_top => false, :border_bottom => true }
                t.style = {:border_x => "-", :border_i => ""}
                    
        end
        puts table, table2
       
    end

    def self.falcon_9
   
        table = Terminal::Table.new :title => "#{Rocket.second.rocket_name}", :headings => ["Cost", "Height", "Diameter", "Mass"] do |t|
            t << [Rocket.second.cost, "#{Rocket.second.height} ft.", "#{Rocket.second.diameter} ft.", "#{Rocket.second.mass} lb."]
        end
            table2 = Terminal::Table.new  do |t|
               
                t<<[Rocket.second.description]
                t.style = {:border_top => false, :border_bottom => true }
                t.style = {:border_x => "-", :border_i => ""}
                    
        end
        puts table, table2
       
    end

    
    def self.falcon_heavy
   
        table = Terminal::Table.new :title => "#{Rocket.third.rocket_name}", :headings => ["Cost", "Height", "Diameter", "Mass"] do |t|
            t << [Rocket.third.cost, "#{Rocket.third.height} ft.", "#{Rocket.third.diameter} ft.", "#{Rocket.third.mass} lb."]
        end
            table2 = Terminal::Table.new  do |t|
               
                t<<[Rocket.third.description]
                t.style = {:border_top => false, :border_bottom => true }
                t.style = {:border_x => "-", :border_i => ""}
                    
        end
        puts table, table2
       
    end


    def self.bfr
   
        table = Terminal::Table.new :title => "#{Rocket.fourth.rocket_name}", :headings => ["Cost", "Height", "Diameter", "Mass"] do |t|
            t << [Rocket.fourth.cost, "#{Rocket.fourth.height} ft.", "#{Rocket.fourth.diameter} ft.", "#{Rocket.fourth.mass} lb."]
        end
            table2 = Terminal::Table.new  do |t|
               
                t<<[Rocket.fourth.description]
                t.style = {:border_top => false, :border_bottom => true }
                t.style = {:border_x => "-", :border_i => ""}
                    
        end
        puts table, table2
       
    end








=======
class Rocket < ActiveRecord::Base
    has_many :launches
    has_many :astronauts, through: :launches
    
    # Get rocket info
    # def rocket_info
    #     puts "#{Rocket.first.rocket_name}'s first 
    #         flight was on #{Rocket.first.first_flight}. 
    #         The cost per launch of this rocket is 
    #         $#{Rocket.first.cost}."
    # end
>>>>>>> 01e07bd762431d33dd91f5563cb23e80b9016b7b

end