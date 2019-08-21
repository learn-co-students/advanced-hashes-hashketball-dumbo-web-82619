# Write your code here!

require 'pry'

def game_hash
  
  hash = 
  {
    home: 
    {
      team_name: 'Brooklyn Nets',
      colors: 
      [
        'Black',
        'White'
      ],
      players: 
      [
        {
          player_name: 'Alan Anderson',
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: 'Reggie Evans',
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7 
        },
        {
          player_name: 'Brook Lopez',
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15 
        },
        {
          player_name: 'Mason Plumlee',
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: 'Jason Terry',
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1 
        }
      ]
    },
    away: 
    {
      team_name: 'Charlotte Hornets',
      colors: 
      [
        'Turquoise',
        'Purple'
      ],
      players: 
      [
        {
          player_name: 'Jeff Adrien',
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2 
        },
        {
          player_name: 'Bismack Biyombo',
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: 'DeSagna Diop',
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: 'Ben Gordon',
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: 'Kemba Walker',
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
  
  return hash
  
end

# def good_practices
#   game_hash.each do |location, team_data|
#     #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
#     binding.pry
#     team_data.each do |attribute, data|
#       #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
#       binding.pry
 
#       #what is 'data' at each loop throughout .each block? when will the following line of code work and when will it break?
#       data.each do |data_item|
#           binding.pry
#       end
#     end
#   end
# end

def num_points_scored(player)
  
  location = game_hash.keys
  team_data = game_hash[location[0]].keys
  
  location.length.times do |i|
    game_hash[location[i]][team_data[2]].length.times do |j|
      if game_hash[location[i]][team_data[2]][j][:player_name] == player
          return game_hash[location[i]][team_data[2]][j][:points]
      end
    end
  end
  
end

def shoe_size(player)
  
  location = game_hash.keys
  team_data = game_hash[location[0]].keys
  
  location.length.times do |i|
    game_hash[location[i]][team_data[2]].length.times do |j|
      if game_hash[location[i]][team_data[2]][j][:player_name] == player
          return game_hash[location[i]][team_data[2]][j][:shoe]
      end
    end
  end
  
end

def team_colors(team)
  
  location = game_hash.keys
  team_data = game_hash[location[0]].keys
  
  location.length.times do |i|
    if game_hash[location[i]][team_data[0]] == team
      return game_hash[location[i]][team_data[1]]
    end
  end

end

def team_names
  
  location = game_hash.keys
  teams = []
  
  location.length.times do |i|
    teams.push(game_hash[location[i]][:team_name])
  end
  
  return teams
  
end

def player_numbers(team)
  
  location = game_hash.keys
  team_data = game_hash[location[0]].keys
  nums = []
  
  location.length.times do |i|
    if game_hash[location[i]][:team_name] == team
      game_hash[location[i]][:players].length.times do |j|
        nums.push(game_hash[location[i]][:players][j][:number])
      end
    end
  end
  
  return nums
  
end

def player_stats(player)
  
  location = game_hash.keys
  
  location.length.times do |i|
    
    game_hash[location[i]][:players].length.times do |j|
      
      if game_hash[location[i]][:players][j][:player_name] == player
        copy = game_hash[location[i]][:players][j]
        copy.delete(:player_name)
        return copy
      end
      
    end
    
  end
  
end

def big_shoe_rebounds
  
  location = game_hash.keys
  max_shoe = 0
  
  location.length.times do |i|
    
    game_hash[location[i]][:players].length.times do |j|
      
      if game_hash[location[i]][:players][j][:shoe] > max_shoe
        max_shoe = game_hash[location[i]][:players][j][:shoe]
      end
      
    end
    
  end
  
  location.length.times do |i|
    
    game_hash[location[i]][:players].length.times do |j|
      
      if game_hash[location[i]][:players][j][:shoe] == max_shoe
        return game_hash[location[i]][:players][j][:rebounds]
      end
      
    end
    
  end
  
end

def most_points_scored
  
  location = game_hash.keys
  max_points = 0
  
  location.length.times do |i|
    
    game_hash[location[i]][:players].length.times do |j|
      
      if game_hash[location[i]][:players][j][:points] > max_points
        max_points = game_hash[location[i]][:players][j][:points]
      end
      
    end
    
  end
  
  location.length.times do |i|
    
    game_hash[location[i]][:players].length.times do |j|
      
      if game_hash[location[i]][:players][j][:points] == max_points
        return game_hash[location[i]][:players][j][:player_name]
      end
      
    end
    
  end
  
end

def winning_team
  
  location = game_hash.keys
  winner = {}
  
  location.length.times do |i|
    game_hash[location[i]].length.times do |j|
      winner[game_hash[location[i]][:team_name]] = 0
    end
  end
  
  location.length.times do |i|
    game_hash[location[i]][:players].length.times do |j|
      winner[game_hash[location[i]][:team_name]] += game_hash[location[i]][:players][j][:points]
    end
  end
  
  winner = winner.max_by{|k,v| v}
  return winner[0]
  
end

def player_with_longest_name
  
  location = game_hash.keys
  max_length = 0
  
  location.length.times do |i|
    
    game_hash[location[i]][:players].length.times do |j|
      
      if game_hash[location[i]][:players][j][:player_name].length > max_length
        max_length = game_hash[location[i]][:players][j][:player_name].length
      end
      
    end
    
  end
  
  location.length.times do |i|
    
    game_hash[location[i]][:players].length.times do |j|
      
      if game_hash[location[i]][:players][j][:player_name].length == max_length
        return game_hash[location[i]][:players][j][:player_name]
      end
      
    end
    
  end
  
end

def long_name_steals_a_ton?
  
  location = game_hash.keys
  max_length = 0
  max_steals = 0
  
  location.length.times do |i|
    
    game_hash[location[i]][:players].length.times do |j|
      
      if game_hash[location[i]][:players][j][:player_name].length > max_length
        max_length = game_hash[location[i]][:players][j][:player_name].length
      end
      if game_hash[location[i]][:players][j][:steals] > max_steals
        max_steals = game_hash[location[i]][:players][j][:steals]
      end
      
    end
    
  end
  
  location.length.times do |i|
    
    game_hash[location[i]][:players].length.times do |j|
      
      if game_hash[location[i]][:players][j][:player_name].length == max_length && game_hash[location[i]][:players][j][:steals] == max_steals
        return true
      end
      
    end
    
  end
  
end



