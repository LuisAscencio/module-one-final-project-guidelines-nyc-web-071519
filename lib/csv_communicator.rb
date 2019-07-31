require "pry"
require "csv"


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




   # def help
   #    help = <<-HELP
   #    I accept the following commands:
   #    - help : displays this help message
   #    - 
   #    HELP
      
   #      puts help
   #    end


   



      def astronaut_name
         puts "Please enter your name:"
          gets.chomp
      end


      def astronaut_age
         puts "Please enter your age:"
       gets.chomp
      end


 
def fav_rocket
    


   puts <<-FR
   SpaceX has 4 rockets:

   1.- Falcon 1
   2.- Falcon 9
   3.- Falcon Heavy
   4.- BFR

   Use numbers 1 to 4 to pick your favorite rocket:
   FR

    # favorite_rocket= gets.chomp
    # if favorite_rocket == 1
    #   favorite_rocket = Rocket.first.rocket_name
    # elsif favorite_rocket == 2
    #   favorite_rocket == Rocket.second.rocket_name
    # elsif favorite_rocket == 3
    #   favorite_rocket = Rocket.third.rocket_name
    # else favorite_rocket == 4
    #   favorite_rocket = Rocket.fourth.rocket_name
    # end





# Astronaut.create(name:astronaut_name, age: astronaut_age, favorite_rocket: favorite_rocket)
   
puts "Hello #{astronaut_name}"


# binding.pry
# 0


end

