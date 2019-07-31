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
         astronaut_name= gets.chomp
      end


      def astronaut_age
         puts "Please enter your age:"
         astronaut_age= gets.chomp
      end


      def favorite_rocket


         puts <<-ROCKETs
         puts "SpaceX has 4 rockets:"
         puts "1.- Falcon 1"
         puts "2.- Falcon 9"
         puts "3.- Falcon Heavy"
         puts "4.- BFR"

         puts "Use numbers 1 to 4 to pick your favorite rocket"

         favorite_rocket= gets.chomp

         if favorite_rocket == "1" then Rocket.first
         end
      end