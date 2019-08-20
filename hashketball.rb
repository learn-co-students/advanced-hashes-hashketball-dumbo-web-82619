require 'pry'

def game_hash
  {
    :home => {
      :team_name => "Brooklyn Nets", 
      :colors => ["Black", "White"], 
      :players => [
        {
          :player => "Alan Anderson",
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
          :player => "Reggie Evans",
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
          :player => "Brook Lopez",
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
          :player => "Mason Plumlee",
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
          :player => "Jason Terry",
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
          :player => "Jeff Adrien",
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
          :player => "Bismack Biyombo",
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
          :player => "DeSagna Diop",
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
          :player => "Ben Gordon",
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
          :player => "Kemba Walker",
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


def num_points_scored(player)
  game_hash.each do |place, team_info|
    team_info.each do |data, details|
      if data == :players
        details.each do |stat, info|
          if stat[:player] == player
            return stat[:points]
          end
        end
      end  
    end
  end
end


def shoe_size(player)
  game_hash.each do |place, team_info|
    team_info.each do |data, details|
      if data == :players
        details.each do |stat, info|
          if stat[:player] == player
            return stat[:shoe]
          end
        end
      end  
    end
  end
end


def team_colors(team)
  game_hash.each do |place, team_info|
    if team_info[:team_name] == team
      return team_info[:colors]
    end
  end
end


def team_names
  names = []
  game_hash.each do |place, team_info|
    names.push(team_info[:team_name]) 
  end
  return names
end


def player_numbers(team)
  numbers = []
  game_hash.each do |place, team_info|
    if team_info[:team_name] == team
      team_info.each do |data, details|
        if data == :players
          details.each do |stat, info|
              numbers.push(stat[:number])
          end
        end
      end
    end  
  end
  return numbers
end  


def player_stats(player)
  stats = {}
  game_hash.each do |place, team_info|
    team_info.each do |data, details|
      if data == :players
        details.each do |player_info|
          if player_info[:player] == player
            stats = player_info.reject! do |stat, info|
              stat == :player
            end
          end
        end
      end
    end
  end
  return stats
end


def big_shoe_rebounds
  shoe_sizes = []
  game_hash.each do |place, team_info|
    team_info.each do |data, details|
      if data == :players
        details.each do |player_info|
          shoe_sizes.push(player_info[:shoe])
        end
        details.each do |player_info|
          if shoe_sizes.max == player_info[:shoe]
            return player_info[:rebounds]
          end
        end
      end
    end
  end
  game_hash.each do |place, team_info|
    team_info.each do |data, details|
      if data == :players
        details.each do |player_info|
          if player_info[:shoe] == shoe_size.max
            return player_info[:rebounds]
          end
        end
      end
    end
  end
end


def most_points_scored
  points = []
  game_hash.each do |place, team_info|
    team_info.each do |data, details|
      if data == :players
        details.each do |player_info|
          points.push(player_info[:points])
        end
      end
    end
  end
  game_hash.each do |place, team_info|
    team_info.each do |data, details|
      if data == :players
        details.each do |player_info|
          if player_info[:points] == points.max
            return player_info[:player]
          end
        end
      end
    end
  end
end


def winning_team
  scores = []
  team_score = []
  game_hash.each do |place, team_info|
    team_info.each do |data, details|
      if data == :player
        details.each do |player_info|
          team_score.push(player_info[:points])
        end
      end
    end
    scores.push(team_score.reduce(:+))
  end
  game_hash.each do |place, team_info|
    team_info.each do |data, details|
      if data == :player
        details.each do |player_info|
          team_score.push(player_info[:points])
        end
      end
    end
    if team_score.reduce(:+) == scores.max
      return team_info[:team_name]
    end
  end
end


def player_with_longest_name
  names = []
  game_hash.each do |place, team_info|
    team_info.each do |data, details|
      if data == :players
        details.each do |player_info|
          names.push(player_info[:player])
        end
      end
    end
  end
  names.reduce do |memo, name|
    memo.length > name.length ? memo : name
  end
end


def long_name_steals_a_ton?
  steals = []
  name = []
  game_hash.each do |place, team_info|
    team_info.each do |data, details|
      if data == :players
        details.each do |player_info|
          steals.push(player_info[:steals])
        end
      end
    end
  end
  game_hash.each do |place, team_info|
    team_info.each do |data, details|
      if data == :players
        details.each do |player_info|
          if player_info[:steals] == steals.max
            name.push(player_info[:player])
          end  
        end
      end
    end
  end
  name.include?(player_with_longest_name)
end



