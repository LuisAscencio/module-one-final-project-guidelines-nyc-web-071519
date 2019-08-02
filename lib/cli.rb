def welcome

    puts  <<-WELCOME

    ================================================
    ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

    WELCOME TO

    ███████╗██████╗  █████╗  ██████╗███████╗██╗  ██╗
    ██╔════╝██╔══██╗██╔══██╗██╔════╝██╔════╝╚██╗██╔╝
    ███████╗██████╔╝███████║██║     █████╗   ╚███╔╝ 
    ╚════██║██╔═══╝ ██╔══██║██║     ██╔══╝   ██╔██╗ 
    ███████║██║     ██║  ██║╚██████╗███████╗██╔╝ ██╗
    ╚══════╝╚═╝     ╚═╝  ╚═╝ ╚═════╝╚══════╝╚═╝  ╚═╝
       
    ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
                                                    
    WELCOME
    puts <<-FR
    Hello, future astronaut! 
    FR
end


def create_astronaut
    Astronaut.create(
        name: astronaut_name,
        age: astronaut_age,
        favorite_rocket: favorite_rocket
    )
end

def astronaut_name
    puts <<-FR
    Please enter your name:
    FR
    name = gets.chomp
    puts "Welcome, #{name}"
end

def astronaut_age
    puts <<-FR
    Please enter your age:
    FR
    input = gets.chomp
    # make sure it's an integer
    if input =~ /^-?[0-9]+$/
        
    else
        puts "Invalid input."
        astronaut_age
    end
end

def favorite_rocket
    puts <<-FR
    SpaceX has 4 rockets:
        1. Falcon 1
        2. Falcon 9
        3. Falcon Heavy
        4. BFR
    Use numbers 1 through 4 to pick your favorite rocket and learn more about it.
    FR
    fav_rocket = gets.chomp

    # binding.pry

    case fav_rocket
    when '1' 
        fav_rocket = Rocket.first.rocket_name
        Rocket.falcon_1
    when '2'
        fav_rocket = Rocket.second.rocket_name
        Rocket.falcon_9
    when '3'
        fav_rocket = Rocket.third.rocket_name
        Rocket.falcon_heavy
    when '4'
        fav_rocket = Rocket.fourth.rocket_name
        Rocket.bfr
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
    To book a flight pick launch number between 1 and 17.
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


    mates = Search.where(future_launch_date: date).map do |n|
        n.name
    end

    puts <<-FR
    Would you like to see all of the people on this flight?
    1. Yes
    2. No
    FR

    input = gets.chomp
    case input
    when "1"
        puts mates
    when "2"
        puts "Thank you for booking with us! We will see you on the day of your flight!"
        exit
    else 
        puts "Your entry is invalid"
        exit
    end

end


def delete_search
    puts <<-FR
    Changed your mind? Press:
        1. To delete your flight
        2. To keep your flight
    FR

    input = gets.chomp

    case input
    when "1" 
        Search.last.delete
        puts <<-FR
    Your flight has been successfully deleted.
    Goodbye!
        FR
        exit
    else
        puts <<-FR
    We will see you on the day of your flight!
        FR
        exit
    end
end




