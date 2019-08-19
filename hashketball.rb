require "pry"


def game_hash
  
  { :home => { :team_name => "Brooklyn Nets",
               :colors => ["Black", "White"],
               :players => [   
                {:player_name => "Alan Anderson",  
                :number => 0,
                :shoe => 16,
                :points => 22,
                :rebounds => 12,
                :assists => 12,
                :steals => 3,
                :blocks => 1,
                :slam_dunks => 1
              },
              {:player_name => "Reggie Evans",  
                :number => 30,
                :shoe => 14,
                :points => 12,
                :rebounds => 12,
                :assists => 12,
                :steals => 12,
                :blocks => 12,
                :slam_dunks => 7
              },
               {:player_name => "Brook Lopez",  
                :number => 11,
                :shoe => 17,
                :points => 17,
                :rebounds => 19,
                :assists => 10,
                :steals => 3,
                :blocks => 1,
                :slam_dunks => 15
              },
                {:player_name => "Mason Plumlee",  
                :number => 1,
                :shoe  => 19,
                :points  => 26,
                :rebounds  => 11,
                :assists  => 6,
                :steals  => 3,
                :blocks  => 8,
                :slam_dunks  => 5
              },  
               {:player_name => "Jason Terry",  
                :number => 31 ,
                :shoe  => 15,
                :points  => 19,
                :rebounds  => 2,
                :assists  => 2,
                :steals  => 4,
                :blocks  => 11,
                :slam_dunks  => 1
              }
            ]
          },
   :away => { :team_name => "Charlotte Hornets",
              :colors => ["Turquoise", "Purple"],
              :players => [
               {:player_name => "Jeff Adrien",  
                :number => 4,
                :shoe  => 18,
                :points  => 10,
                :rebounds  => 1,
                :assists  => 1,
                :steals  => 2,
                :blocks  => 7,
                :slam_dunks  => 2
              },
                {:player_name => "Bismack Biyombo",  
                :number => 0,
                :shoe  => 16,
                :points  => 12,
                :rebounds  => 4,
                :assists  => 7,
                :steals  => 22,
                :blocks  => 15,
                :slam_dunks  => 10
              },
               {:player_name => "DeSagna Diop",  
                :number => 2,
                :shoe  => 14,
                :points  => 24,
                :rebounds  => 12,
                :assists  => 12,
                :steals  => 4,
                :blocks  => 5,
                :slam_dunks  => 5
              },
              {:player_name => "Ben Gordon",  
                :number => 8,
                :shoe  => 15,
                :points  => 33,
                :rebounds  => 3,
                :assists  => 2,
                :steals  => 1,
                :blocks  => 1,
                :slam_dunks  => 0
              },
              {:player_name => "Kemba Walker",  
                :number => 33,
                :shoe => 15,
                :points => 6,
                :rebounds => 12,
                :assists => 12,
                :steals => 7,
                :blocks => 5,
                :slam_dunks => 12
              }
            ]
          }
      }

end



def num_points_scored(passed_player)
  pointz = nil
  game_hash.each do |location, team|
  #binding.pry
    team.each do |key, value|
    #binding.pry
      if key == :players
        value.each do |data|
        # binding.pry
          if data[:player_name] == passed_player
          pointz = data[:points]
            #  binding.pry
          end
        end
      end
    end
  end
   
   pointz
  # binding.pry
end

def shoe_size(passed_player)
  size_of_shoe = nil
  game_hash.each do |location, team|
 #  binding.pry
    team.each do |key, value|
   #  binding.pry
      if key == :players
        value.each do |data|
         # binding.pry
          if data[:player_name] == passed_player
           size_of_shoe = data[:shoe]
            #  binding.pry
          end
        end
       end
     end
   end
   
  return size_of_shoe
   #binding.pry
end


def team_colors(name)
  game_hash.each do |location, team|
   # binding.pry
    if team[:team_name] == name
    return team[:colors]
    end
  end
end

def team_names
  names_array = []
  game_hash.each do |location, team|
    if team[:team_name]
      names_array <<  team[:team_name]
  end
end
return names_array
end

def player_numbers(name)
  numbers_array = []
 game_hash.each do |location, team|
  if team[:team_name] == name
    #binding.pry
    team[:players].each do |jersey|
      numbers_array << jersey[:number]
     
     # binding.pry
      
         
 
     end
   end
 end
 numbers_array
 end  

def player_stats(name)
   stats ={}
  game_hash.each do |location, team|
  #binding.pry
    team.each do |key, value|
    #binding.pry
      if key == :players
        value.each do |data|
       
        # binding.pry
          if data[:player_name] == name
            #binding.pry 
          stats = data
         stats.delete(:player_name)
        #  binding.pry
    
          end
        end
      end
    end
  end
   
 stats
 #  binding.pry
end

def big_shoe_rebounds
   largest_shoe = 0
   rebounds = 1
   
  game_hash.each do |location, team|
  #binding.pry
    team.each do |key, value|
    #binding.pry
      if key == :players
         value.each do |data|
       
        # binding.pry
          if data[:shoe] > largest_shoe
            #binding.pry 
          largest_shoe = data[:shoe]
         rebounds = data[:rebounds]
          #binding.pry
    
          end
        end
      end
    end
  end
   
 rebounds
 #  binding.pry
end

def most_points_scored
    most_points = 0
   point_leader = "fake name"
   
  game_hash.each do |location, team|
  #binding.pry
    team.each do |key, value|
    #binding.pry
      if key == :players
         value.each do |data|
       
        # binding.pry
          if data[:points] > most_points
            #binding.pry 
          most_points = data[:points]
         point_leader = data[:player_name]
          #binding.pry
    
          end
        end
      end
    end
  end
   
 point_leader
 #  binding.pry
end


def winning_team
  
homet=0 
awayt = 0
homen = game_hash[:home][:team_name]

awayn = game_hash[:away][:team_name]

  game_hash.each do |location, team|
  #binding.pry
    team.each do |key, value|
    #binding.pry
      if key == :players
         value.each do |data|
       
        # binding.pry
          if location == :home
            homet += data[:points]
            
          if location == :away
            binding.pry
            awayt += data[:points]
    end
          end
        end
      end
    end
  end
homet > awayt ? homen : awayn
end

def player_with_longest_name
longest_name = nil
longest_name_length = 0

  game_hash.each do |location, team|
  #binding.pry
    team.each do |key, value|
    #binding.pry
      if key == :players
         value.each do |data|
       
        # binding.pry
          if data[:player_name].length > longest_name_length 
            #binding.pry 
          longest_name = data[:player_name]
         longest_name_length = data[:player_name].length
          #binding.pry
    
          end
        end
      end
    end
  end
   
longest_name
 #  binding.pry
end











def long_name_steals_a_ton?
longest_name = nil
longest_name_length = 0
stealer = nil
most_steals = 0 

  game_hash.each do |location, team|
  #binding.pry
    team.each do |key, value|
    #binding.pry
      if key == :players
         value.each do |data|
       
        # binding.pry
          if data[:player_name].length > longest_name_length 
            #binding.pry 
          longest_name = data[:player_name]
         longest_name_length = data[:player_name].length
          #binding.pry
    
          end
        end
      end
    end
  end
  game_hash.each do |location, team|
  team.each do |key, value|
    #binding.pry
      if key == :players
         value.each do |data|
       
        # binding.pry
          if data[:steals] > most_steals
            #binding.pry 
          most_steals = data[:steals]
         stealer = data[:player_name]
          #binding.pry
    
          end
        end
      end
    end
  end
   
longest_name == stealer ? true : false
 #  binding.pry
end


#num_points_scored(game_hash)
#team_colors(game_hash)