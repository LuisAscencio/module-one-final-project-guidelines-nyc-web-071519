require 'pry'
require 'csv'
Rocket.destroy_all
Launch.destroy_all
Astronaut.destroy_all
Search.destroy_all


# ROCKETS
rockets = CSV.read("resources/rockets.csv")

# "Falcon 1",       0 NAME
#  "FALSE",         1 ACTIVE
#  "6700000",       2 COST PER LAUNCH
#  "24-Mar-06",     3 FIRST FLIGHT DATE
#  "Republic of the Marshall Islands",  4 LOCATION
#  "73",            5 HEIGHT FT
#  "5.5",           6 DIAMETER FT
#  "66460",         7 MASS LB
#  "The Falcon 1 was an expendable launch system privately developed and manufactured by SpaceX during 2006-2009. On 28 September 2008, Falcon 1 became the first privately-developed liquid-fuel launch vehicle to go into orbit around the Earth.",
#  "falcon1"        9 ID

Rocket.create(
    rocket_name: rockets[1][0],
    cost: rockets[1][2],
    first_flight: rockets[1][3],
    country: rockets[1][4],
    height: rockets[1][5],
    diameter: rockets[1][6],
    mass: rockets[1][7],
    description: rockets[1][8]
)

Rocket.create(
    rocket_name: rockets[2][0],
    cost: rockets[2][2],
    first_flight: rockets[2][3],
    country: rockets[2][4],
    height: rockets[2][5],
    diameter: rockets[2][6],
    mass: rockets[2][7],
    description: rockets[2][8]
)

Rocket.create(
    rocket_name: rockets[3][0],
    cost: rockets[3][2],
    first_flight: rockets[3][3],
    country: rockets[3][4],
    height: rockets[3][5],
    diameter: rockets[3][6],
    mass: rockets[3][7],
    description: rockets[3][8]
)

Rocket.create(
    rocket_name: rockets[4][0],
    cost: rockets[4][2],
    first_flight: rockets[4][3],
    country: rockets[4][4],
    height: rockets[4][5],
    diameter: rockets[4][6],
    mass: rockets[4][7],
    description: rockets[4][8]
)


# USERS



# LAUNCHES
launches = CSV.read("resources/launches.csv")

index = 1
while index <93

    Launch.create(
        # id: integer, 
        # user_id: integer, 
        # rocket_id: integer, 
        mission_name: launches[index][0],
        upcoming: launches[index][1],
        launch_date: launches[index][2],
        rocket_name: launches[index][3],
        payload: launches[index][4],
        launch_site: launches[index][5],
        launch_state: launches[index][8]
        # launch_success: boolean
    )
    index+=1
    
end


# "Trailblazer",                        0 MISSION NAME
# "FALSE",                              1 UPCOMING
# "2-Aug-08",                           2 LAUNCH DATE
# "Falcon 1",                           3 ROCKET NAME
# "Trailblazer",                        4 PAYLOAD
# "Kwajalein Atoll",                    5 
# "Kwajalein Atoll Omelek Island",      6 LAUNCH SITE
# "FALSE",                              7 LAUNCH SUCCESS
# "Republic of the Marshall Islands"    8 LAUNCH STATE








# SEARCHES





# binding.pry