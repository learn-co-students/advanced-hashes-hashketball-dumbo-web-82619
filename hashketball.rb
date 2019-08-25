# # # Write your code here!
# # require 'pry'


# # def game_hash
# #   {:home => {
# #     :team_name => 'Brooklyn Nets',
# #     :colors => ['black', 'white'],
# #     :players => [
# #       {player_name: 'Alan Anderson', number: 0, shoe: 16, points: 22, rebounds: 12, assists: 12, steals: 3, blocks: 1, slam_dunks: 1},
# #       {player_name: 'Reggie Evans', number: 30, shoe: 14, points: 12, rebounds: 12, assists: 12, steals: 12, blocks: 12, slam_dunks: 7},
# #       {player_name: 'Brook Lopez', number: 11, shoe: 17, points: 17, rebounds: 19, assists: 10, steals: 3, blocks: 1, slam_dunks: 15},
# #       {player_name: 'Mason Plumlee', number: 1, shoe: 19, points: 26, rebounds: 12, assists: 6, steals: 3, blocks: 8, slam_dunks: 5},
# #       {player_name: 'Jason Terry', number: 31, shoe: 15, points: 19, rebounds: 2, assists: 2, steals: 4, blocks: 11, slam_dunks: 1}
# #       ]
# #     },
# #   :away => {
# #     :team_name => 'Charlotte Hornets',
# #     :colors => ['turquoise', 'purple'],
# #     :players => [
# #       {player_name: 'Jeff Adrien', number: 4, shoe: 18, points: 10, rebounds: 1, assists: 1, steals: 2, blocks: 7, slam_dunks: 2},
# #       {player_name: 'Bismak Biyombo', number: 0, shoe: 16, points: 12, rebounds: 4, assists: 7, steals: 7, blocks: 15, slam_dunks: 10},
# #       {player_name: 'DeSagna Diop', number: 2, shoe: 14, points: 24, rebounds: 12, assists: 12, steals: 4, blocks: 5, slam_dunks: 5},
# #       {player_name: 'Ben Gordon', number: 8, shoe: 15, points: 33, rebounds: 3, assists: 2, steals: 1, blocks: 1, slam_dunks: 0},
# #       {player_name: 'Brendan Haywood', number: 33, shoe: 15, points: 6, rebounds: 12, assists: 12, steals: 22, blocks: 5, slam_dunks: 12}
# #       ]
# #     }
# #   }
# # end


# # def num_points_scored(player_n)
# #   game_hash.each do |home_away, keys|
# #     keys[:players].each do |player|
# #       #binding.pry
# #       if player[:player_name] == player_n
# #         return player[:points] 
# #       end
# #       else
        
# #     end
# #   end
# # end


# # # # Alternate code
# # # def num_points_scored(player_n)
# # #   player_stats(player_n)[:points]
# # # end


# # def shoe_size(player_n)
# #   game_hash.each do |home_away, keys|
# #     keys[:players].each do |player|
# #       return player[:shoe] if player[:player_name] == player_n
# #     end
# #   end
# # end


# # # Alternate code
# # # def shoe_size(player_n)
# # #   player_stats(player_n)[:shoe]
# # # end


# # def team_colors(team_name)
# #   game_hash.each do |home_away, keys|
# #     if keys[:team_name] == team_name
# #       return keys[:colors].map(&:capitalize)
# #     end
# #   end
# # end


# # def team_names
# #   game_hash.map {|home_away, keys| keys[:team_name]}
# # end


# # def player_numbers(team_name)
# #   game_hash.each do |home_away, keys|
# #     if keys[:team_name] == team_name
# #       return keys[:players].map { |player| player[:number] }
# #     end
# #   end
# # end



# # def big_shoe_rebounds
# #   biggest = 0
# #   rebounds = 0
# #   game_hash.each do |home_away, keys|
# #     keys[:players].each do |player|
# #       size = player[:shoe]
# #       if size > biggest
# #         biggest = size
# #         rebounds = player[:rebounds]
# #       end
# #     end
# #   end
# #   rebounds
# # end


# # # Bonus

# # def most_points_scored
# #   most_points = 0
# #   mvp = ''
# #   game_hash.each do |home_away, keys|
# #     keys[:players].each do |player|
# #       points = player[:points]
# #       if points > most_points
# #         most_points = points
# #         mvp = player[:player_name]
# #       end
# #     end
# #   end
# #   mvp
# # end

# # def winning_team
# #   total_points = 0
# #   win_team = ''
# #   game_hash.each do |home_away, keys|
# #     team_points = 0
# #     team_name = game_hash[home_away][:team_name]
# #     keys[:players].each do |player|
# #       points = player[:points]
# #       team_points += points
# #     end
# #     win_team, total_points = team_name, team_points if team_points > total_points
# #   end
# #   return win_team
# # end

# # def player_with_longest_name
# #   longest = ''
# #   longest_length = 0
# #   game_hash.each do |home_away, keys|
# #     keys[:players].each do |player|
# #       name_length = player[:player_name].length
# #       longest, longest_length = player[:player_name], name_length if name_length > longest_length
# #     end
# #   end
# #   return longest
# # end


# # # Super Bonus

# # def long_name_steals_a_ton?
# #   steals_most = ''
# #   most_steals = 0
# #   game_hash.each do |home_away, keys|
# #     keys[:players].each do |player|
# #       steals_most, most_steals = player[:player_name], player[:steals] if player[:steals] > most_steals
# #     end
# #   end
# #   return true if steals_most == player_with_longest_name
# # end







require "pry"
def game_hash
  game_hash = {
    :home => {
      :team_name => 
        "Brooklyn Nets",
      :colors => [
        "Black",
        "White"
      ],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1, 
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7, 
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15, 
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 11,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5, 
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1, 
        },
      },
    },
    :away => {
      :team_name => 
        "Charlotte Hornets",
      :colors => [
        "Turquoise",
        "Purple"
      ],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2, 
        },
        "Bismack Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 22,
          :blocks => 15,
          :slam_dunks => 10, 
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5, 
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0, 
        },
        "Kemba Walker" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 7,
          :blocks => 5,
          :slam_dunks => 12,
        }
      },
    }
  }
end

def players
  return game_hash[:home][:players].merge(game_hash[:away][:players])
end

def num_points_scored(name)
  # binding.pry
  return players[name][:points]
end

def shoe_size(name)
  return players[name][:shoe]
end

def team_colors(team_name)
  game_hash.each do |team, data|
    if data[:team_name] == team_name
      return game_hash[team][:colors]
    end
  end
end

def team_names
  game_hash.collect do |team, data|
    data[:team_name]
  end
end

def player_numbers(team_name)
numbers = []
  game_hash.values.collect do |team|
    if team[:team_name] == team_name
      team[:players].values.each do |number|
        numbers << number[:number]
      end
    end
  end
  numbers
end

def player_stats(name)
  players[name]
end 

def big_shoe_rebounds
  shoes = players.collect do |name, stats|
    stats[:shoe]
  end
  players.collect do |name, stats|
    if players[name][:shoe] == shoes.max
      return players[name][:rebounds]
    end
  end
end

def most_points_scored
  points = players.collect do |name, stats|
    stats[:points]
  end
  players.collect do |name, stats|
    if stats[:points] == points.max
      return name
    end
  end
end

def winning_team
point = []
team1 = 0
team2 = 0
  game_hash[:home][:players].collect do |name, stats|
    team1 += stats[:points]
  end
  game_hash[:away][:players].collect do |name, stats|
    team2 += stats[:points]
  end
  if team1 > team2
    return game_hash[:home][:team_name]
  else
    return game_hash[:away][:team_name]
  end
end

def player_with_longest_name
  name_length = players.collect do |name, stats|
    name.length
  end
  players.collect do |name, stats|
    if name.length == name_length.max
      return name
    end
  end
end

def long_name_steals_a_ton?
  steals = players.collect do |name, stats|
    stats[:steals]
  end
  players.collect do |name, stats|
    if stats[:steals] == steals.max && name == player_with_longest_name
      return true
    end
  end
end


