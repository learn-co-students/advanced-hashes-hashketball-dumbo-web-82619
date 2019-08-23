require "pry"  # Write your code here!
def game_hash
  {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => [
      {
      :name => "Alan Anderson",
      :number => 0,
      :shoe => 16,
      :points => 22,
      :rebounds => 12,
      :assists => 12,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 1
      },
      {
      :name => "Reggie Evans",
      :number => 30,
      :shoe => 14,
      :points => 12,
      :rebounds => 12,
      :assists => 12,
      :steals => 12,
      :blocks => 12,
      :slam_dunks => 7
      },
      {
      :name => "Brook Lopez",
      :number => 11,
      :shoe => 17,
      :points => 17,
      :rebounds => 19,
      :assists => 10,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 15
      },
      {
      :name => "Mason Plumlee",
      :number => 1,
      :shoe => 19,
      :points => 26,
      :rebounds => 11,
      :assists => 6,
      :steals => 3,
      :blocks => 8,
      :slam_dunks => 5
      },
      {
      :name => "Jason Terry",
      :number => 31,
      :shoe => 15,
      :points => 19,
      :rebounds => 2,
      :assists => 2,
      :steals => 4,
      :blocks => 11,
      :slam_dunks => 1
      }
    ]
  },
  :away => {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => [
      {
      :name => "Jeff Adrien",
      :number => 4,
      :shoe => 18,
      :points => 10,
      :rebounds => 1,
      :assists => 1,
      :steals => 2,
      :blocks => 7,
      :slam_dunks => 2
      },
      {
      :name => "Bismack Biyombo", 
      :number => 0,
      :shoe => 16,
      :points => 12,
      :rebounds => 4,
      :assists => 7,
      :steals => 22,
      :blocks => 15,
      :slam_dunks => 10
      },
      {
      :name => "DeSagna Diop", 
      :number => 2,
      :shoe => 14,
      :points => 24,
      :rebounds => 12,
      :assists => 12,
      :steals => 4,
      :blocks => 5,
      :slam_dunks => 5
      },
      {
      :name => "Ben Gordon",
      :number => 8,
      :shoe => 15,
      :points => 33,
      :rebounds => 3,
      :assists => 2,
      :steals => 1,
      :blocks => 1,
      :slam_dunks => 0
      },
      {
      :name => "Kemba Walker",
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

def good_practices
  game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    #binding.pry
    team_data.each do |attribute, data|
      #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
      binding.pry
 
      #what is 'data' at each loop throughout .each block? when will the following line of code work and when will it break?
      data.each do |data_item|
          binding.pry
      end
    end
  end
end



def num_points_scored (player_name)
  points_made = nil

  game_hash.each do |team, team_hash|
    players_array = team_hash[:players]
      players_array.each do |player_stats_hash|
        if player_stats_hash[:name] == player_name
          points_made = player_stats_hash[:points]
        end
      end
  end
  points_made
end
  
def shoe_size(player_name)
  shoes_size = nil

  game_hash.each do |team, team_hash|
    players_array = team_hash[:players]
      players_array.each do |player_stats_hash|
        if player_stats_hash[:name] == player_name
          shoes_size = player_stats_hash[:shoe]
        end
      end
  end
  shoes_size
end
def team_colors (team_name)
    teams_colors = []
    game_hash.each do |team, team_hash|
        if team_hash[:team_name] == team_name
            teams_colors = team_hash[:colors].flatten
        end
    end
    teams_colors
end

def team_names
  game_hash.collect do |team, team_hash|
    team_hash[:team_name] 
  end
end

def player_numbers (team_name)
  player_numbers_array = []
  game_hash.each do |team, team_hash|
    if team_hash[:team_name] == team_name
      team_hash[:players].each do |player_name|
        player_name.each do |key, value|
          if key == :number 
            player_numbers_array << value
          end
        end
      end
    end
  end
  player_numbers_array
end

def player_stats(player_name)
  player_stats = {}
  game_hash.each do |team, team_hash|
    team_hash[:players].each do |stats|

      if stats[:name] == player_name
        stats.delete(:name)
        player_stats = stats
      end
    end
  end
  player_stats
end  
def big_shoe_rebounds
  big_shoes_players = 0
  rebounds = 0
    game_hash.each do | team, team_hash|
      team_hash[:players].each do | stats |
        if stats[:shoe] > big_shoes_players
          big_shoes_players = stats[:shoe]
          rebounds = stats[:rebounds]
        end
      end
    end
  rebounds
end


def most_points_scored
  most_points = 0
  mvp = ''
  game_hash.each do |team, team_hash|
    team_hash[:players].each do |player|
      points = player[:points]
      if points > most_points
        most_points = points
        mvp = player[:name]
      end
    end
  end
  mvp
end

def winning_team
  total_points = 0
  winners = ''
  game_hash.each do |team, team_hash|
    team_points = 0
    team_name = game_hash[team][:team_name]
    team_hash[:players].each do |player|
      points = player[:points]
      team_points += points
    end
    winners, total_points = team_name, team_points if team_points > total_points
  end
  return winners
end

def player_with_longest_name
  longest_name = ''
  longest_length = 0
  game_hash.each do |team, team_hash|
    team_hash[:players].each do |player|
      name_length = player[:name].length
      longest_name, longest_length = player[:name], name_length if name_length > longest_length
    end
  end
  return longest_name
end

def long_name_steals_a_ton?
  long_name_stealer = ''
  most_steals = 0
  game_hash.each do |team, team_hash|
    team_hash[:players].each do |player|
      long_name_stealer, most_steals = player[:name], player[:steals] if player[:steals] > most_steals
    end
  end
  return true if long_name_stealer == player_with_longest_name
end