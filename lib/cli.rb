def welcome

    puts  <<-ROCKET
      
    
    db   d8b   db d88888b db       .o88b.  .d88b.  .88b  d88. d88888b 
    88   I8I   88 88'     88      d8P  Y8 .8P  Y8. 88'YbdP`88 88'     
    88   I8I   88 88ooooo 88      8P      88    88 88  88  88 88ooooo 
    Y8   I8I   88 88~~~~~ 88      8b      88    88 88  88  88 88~~~~~ 
    `8b d8'8b d8' 88.     88booo. Y8b  d8 `8b  d8' 88  88  88 88.     
     `8b8' `8d8'  Y88888P Y88888P  `Y88P'  `Y88P'  YP  YP  YP Y88888P 
                                                                      
                                                                     
    
     d888888b  .d88b.  
     `~~88~~' .8P  Y8. 
        88    88    88 
        88    88    88 
        88    `8b  d8' 
        YP     `Y88P'  
                       
                     
    
    .d8888. d8888b.  .d8b.   .o88b. d88888b db    db 
    88'  YP 88  `8D d8' `8b d8P  Y8 88'     `8b  d8' 
    `8bo.   88oodD' 88ooo88 8P      88ooooo  `8bd8'  
      `Y8b. 88~~~   88~~~88 8b      88~~~~~  .dPYb.  
    db   8D 88      88   88 Y8b  d8 88.     .8P  Y8. 
    `8888Y' 88      YP   YP  `Y88P' Y88888P YP    YP 
                                                    
    
    
    ROCKET
    end


def create_astronaut
    Astronaut.create(
        name: astronaut_name,
        age: astronaut_age,
        favorite_rocket: favorite_rocket
    )
end
    
def astronaut_name
    puts "Please enter your name:"
    gets.chomp
end

def astronaut_age
    puts "Please enter your age:"
    gets.chomp
end

def favorite_rocket
puts <<-FR
SpaceX has 4 rockets:

1.- Falcon 1
2.- Falcon 9
3.- Falcon Heavy
4.- BFR

Use numbers 1 to 4 to pick your favorite rocket:
FR






fav_rock = gets.chomp


if fav_rock == "1"
fav_rock = Rocket.first.rocket_name
elsif fav_rock == "2"
fav_rock =Rocket.second.rocket_name
elsif fav_rock == "3"
fav_rock = Rocket.third.rocket_name
elsif fav_rock == "4"
fav_rock = Rocket.fourth.rocket_name
else 
puts <<-LB





d8888b. d888888b  .o88b. db   dD       .d8b.              
88  `8D   `88'   d8P  Y8 88 ,8P'      d8' `8b             
88oodD'    88    8P      88,8P        88ooo88             
88~~~      88    8b      88`8b        88~~~88             
88        .88.   Y8b  d8 88 `88.      88   88             
88      Y888888P  `Y88P' YP   YD      YP   YP             
                                                          
                                                          
d8b   db db    db .88b  d88. d8888b. d88888b d8888b.      
888o  88 88    88 88'YbdP`88 88  `8D 88'     88  `8D      
88V8o 88 88    88 88  88  88 88oooY' 88ooooo 88oobY'      
88 V8o88 88    88 88  88  88 88~~~b. 88~~~~~ 88`8b        
88  V888 88b  d88 88  88  88 88   8D 88.     88 `88.      
VP   V8P ~Y8888P' YP  YP  YP Y8888P' Y88888P 88   YD      
                                                          
                                                          
 db      d888888b  .d88b.         j88D       db db db     
o88      `~~88~~' .8P  Y8.       j8~88       88 88 88     
 88         88    88    88      j8' 88       YP YP YP     
 88         88    88    88      V88888D                   
 88         88    `8b  d8'          88       db db db     
 VP         YP     `Y88P'           VP       YP YP YP   
 
 
 
 LB

favorite_rocket

end

end

def future_launches
    puts "Would you like to see all future launches?"
    puts "y/n"
    input = gets.chomp
    if input == "y"
        
            index = 1
            table = Terminal::Table.new :title => "Future Launchess", :headings => ["Id", "Date", 'Mission', 'Site', "State", "Rocket"] do |t|
                while index<Launch.future_missions.size
                    
               
                t << [index, Launch.future_dates[index], Launch.future_missions[index], Launch.future_sites[index], Launch.future_states[index], Launch.future_rockets[index]]
                 t << :separator
                # t.add_row [Rocket.second.rocket_name, Rocket.second.cost, "#{Rocket.second.height} ft.", "#{Rocket.second.diameter} ft.", "#{Rocket.second.mass} lb." ]
                # t.add_separator
                # t.add_row [Rocket.third.rocket_name, Rocket.third.cost, "#{Rocket.third.height} ft.", "#{Rocket.third.diameter} ft.", "#{Rocket.third.mass} lb." ]
                # t.add_separator
                # t.add_row [Rocket.fourth.rocket_name, Rocket.fourth.cost, "#{Rocket.fourth.height} ft.", "#{Rocket.fourth.diameter} ft.", "#{Rocket.fourth.mass} lb."]
             index+=1
                end
            end
              puts table
            
      









        # # get future flights in a table
        # mission = Launch.future_missions[1] # mission names
        # site = Launch.future_sites # launch site name
        # state = Launch.future_states # launch site state


        # puts mission # mission names
        # puts site # launch site name
        # puts state # launch site state
    else 
        "BYE!"
        # ask if they want to see their search
    end
end


    



def book_launch
    puts "pick launch"
    index=0
    user_input= gets.chomp.to_i
    index=user_input

    table = Terminal::Table.new :title => "Future Launchess", :headings => ["Id", "Date", 'Mission', 'Site', "State", "Rocket"] do |t|
     t << [index, Launch.future_dates[index], Launch.future_missions[index], Launch.future_sites[index], Launch.future_states[index], Launch.future_rockets[index]]

    end
    date = Launch.future_dates[index]
    mission = Launch.future_missions[index]
    sites = Launch.future_sites[index]
    state = Launch.future_states[index]
    rocket = Launch.future_rockets[index]

    Search.create(
    astronaut_id: Astronaut.last.id,
    future_launch_date: date,
    future_launch_site: sites,
    favorite_rocket: Astronaut.last.favorite_rocket,
    name: Astronaut.last.name


    )
    # binding.pry

    puts table
end

# binding.pry
# 0




# def create_search
#     Search.create(
#         astronaut_id: 
#         future_launch_date: 
#         future_launch_site:
#         favorite_rocket: favorite_rocket,
#         name: astronaut_name
#     )
# end



# def book_flight
#     puts "Here are all of the upcoming flights."

# end

