# def welcome

#     puts  <<-WELCOME
      
#     db   d8b   db d88888b db       .o88b.  .d88b.  .88b  d88. d88888b 
#     88   I8I   88 88'     88      d8P  Y8 .8P  Y8. 88'YbdP`88 88'     
#     88   I8I   88 88ooooo 88      8P      88    88 88  88  88 88ooooo 
#     Y8   I8I   88 88~~~~~ 88      8b      88    88 88  88  88 88~~~~~ 
#     `8b d8'8b d8' 88.     88booo. Y8b  d8 `8b  d8' 88  88  88 88.     
#      `8b8' `8d8'  Y88888P Y88888P  `Y88P'  `Y88P'  YP  YP  YP Y88888P 
                                                                      
                                                                     
#      d888888b  .d88b.  
#      `~~88~~' .8P  Y8. 
#         88    88    88 
#         88    88    88 
#         88    `8b  d8' 
#         YP     `Y88P'  
                       
                     
#     .d8888. d8888b.  .d8b.   .o88b. d88888b db    db 
#     88'  YP 88  `8D d8' `8b d8P  Y8 88'     `8b  d8' 
#     `8bo.   88oodD' 88ooo88 8P      88ooooo  `8bd8'  
#       `Y8b. 88~~~   88~~~88 8b      88~~~~~  .dPYb.  
#     db   8D 88      88   88 Y8b  d8 88.     .8P  Y8. 
#     `8888Y' 88      YP   YP  `Y88P' Y88888P YP    YP 
                                                    
#     WELCOME
# end



def create_astronaut
    Astronaut.create(
        name: astronaut_name,
        age: astronaut_age,
        favorite_rocket: favorite_rocket
    )
end

def astronaut_name
    puts <<-FR
    Hello, future astronaut! 
    Please enter your name:
    FR
    name = gets.chomp
end

def astronaut_age
    puts <<-FR
    Please enter your age:
    FR
    gets.chomp
end

def favorite_rocket
    puts <<-FR
    SpaceX has 4 rockets:
        1. Falcon 1
        2. Falcon 9
        3. Falcon Heavy
        4. BFR
    Use numbers 1 through 4 to pick your favorite rocket
    FR
    fav_rocket = gets.chomp

    # binding.pry

    case fav_rocket
    when '1' 
        fav_rocket = Rocket.first.rocket_name
    when '2'
        fav_rocket = Rocket.second.rocket_name
    when '3'
        fav_rocket = Rocket.third.rocket_name
    when '4'
        fav_rocket = Rocket.fourth.rocket_name
    else
        puts 'Invalid entry'
        favorite_rocket
    end
    # binding.pry
end


def future_launches
    puts <<-FR
    Would you like to see all future launches?
        1. Yes
        2. No
    FR
    input = gets.chomp

    case input
    when "1"
        index = 1
        table = Terminal::Table.new :title => "FUTURE LAUHCHES", :headings => ["Id", "Date", 'Mission', 'Site', "State", "Rocket"] do |t|
            while index < Launch.future_missions.size
                t << [
                    index, 
                    Launch.future_dates[index], 
                    Launch.future_missions[index], 
                    Launch.future_sites[index], 
                    Launch.future_states[index], 
                    Launch.future_rockets[index]
                ]
                # t << :separator
                index += 1
            end
        end
        puts table
    when "2" 
        puts "BYE!"
        exit
    else
        puts "Invalid entry"
        future_launches
    end
end

def book_launch
    puts <<-FR
    "To book a flight pick launch number between 1 and 18."
    FR

    index = 0
    user_input = gets.chomp.to_i
    index = user_input

    if user_input.between?(1, 17)
        puts <<-FR
        Congratulations! Your flight has been booked!
        Below are the flight details.
        FR
        table = Terminal::Table.new :title => "YOUR FLIGHT", :headings => ["Id", "Date", 'Mission', 'Site', "State", "Rocket"] do |t|
            t << [
                index, 
                Launch.future_dates[index], 
                Launch.future_missions[index], 
                Launch.future_sites[index], 
                Launch.future_states[index], 
                Launch.future_rockets[index]
            ]
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
        puts table
    else
        puts "Invalid entry"
        book_launch
    end 
end

def flight_mates
end



def delete_search
    puts "delete? y/n"
    input = gets.chomp
    if input == "y" 
        Search.last.delete
    else
        puts "bye"
    end
end



















# def future_launches
#     puts "Would you like to see all future launches?"
#     puts "y/n"
#     input = gets.chomp
#     if input == "y"
#         # get future flights in a table
#         # puts Launch.future_missions # mission names
#         # puts Launch.future_sites # launch site name
#         # puts Launch.future_states # launch site state
#         # puts Launch.future_dates # launch date

#         # mission = Launch.future_missions # mission names
#         # site = Launch.future_sites # launch site name
#         # state = Launch.future_states # launch site state
#         # date = Launch.future_dates # launch date

#         # puts mission # mission names
#         # puts site # launch site name
#         # puts state # launch site state
#         # puts date # launch date
#     else 
#         puts "BYE!"
#         # ask if they want to see their search
#     end
# end

# binding.pry
# 0

# def create_search
#     Search.create(
#         stronaut_id: get_id
#         future_launch_date: date,
#         future_launch_site: site,
#         favorite_rocket: favorite_rocket,
#         name: astronaut_name
#     )
# end






# def book_flight
#     puts "Here are all of the upcoming flights."

# end

