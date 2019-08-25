# Write your code here!

def game_hash()
  game_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [
                { 
                    :player_name => "Alan Anderson",
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
                    :player_name => "Reggie Evans",
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
                    :player_name => "Brook Lopez",
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
                    :player_name => "Mason Plumlee",
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
                    :player_name => "Jason Terry",
                    :number => 31,
                    :shoe => 15,
                    :points => 19,
                    :rebounds => 2,
                    :assists => 2,
                    :steals => 4,
                    :blocks => 11,
                    :slam_dunks => 1
                },
            ]
        },
        :away => {
            :team_name => "Charlotte Hornets",
            :colors => ["Turquoise", "Purple"],
            :players => [
                {
                    :player_name => "Jeff Adrien",
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
                    :player_name => "Bismack Biyombo",
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
                    :player_name => "DeSagna Diop",
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
                    :player_name => "Ben Gordon",
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
                    :player_name => "Kemba Walker",
                    :number => 33,
                    :shoe => 15,
                    :points => 6,
                    :rebounds => 12,
                    :assists => 12,
                    :steals => 7,
                    :blocks => 5,
                    :slam_dunks => 12
                },
            ]
        }
    }
  return game_hash
end 

def num_points_scored(name)
  big_hash = game_hash()
  big_hash.each do |loc, data|
    data[:players].each do |obj|
      obj.each do |keys, values|
        if obj[:player_name] == name
          return obj[:points]
        end
      end
    end
  end
end

def shoe_size(name)
  big_hash = game_hash()
  big_hash.each do |loc, data|
    data[:players].each do |obj|
      obj.each do |keys, values|
        if obj[:player_name] == name
          return obj[:shoe]
        end
      end
    end
  end
end

def team_colors(team)
  big_hash = game_hash()
  colors = []
  big_hash.each do |loc, data|
    if data[:team_name] == team
      return data[:colors]
    end
  end
end

def team_names()
  big_hash = game_hash()
  names = []
  big_hash.each do |loc, data|
    names.push(data[:team_name])
  end
  names
end

def player_numbers(teamname)
  big_hash = game_hash()
  numbers = []
  big_hash.each do |loc, data|
    if data[:team_name] == teamname
      data[:players].each do |obj|
        numbers.push(obj[:number])
      end
    end
  end
  numbers
end

def player_stats(name)
  big_hash = game_hash()
  big_hash.each do |loc, data|
    data[:players].each do |obj|
      obj.each do |keys, values|
        if obj[:player_name] == name
          obj.delete(:player_name)
          return obj
        end
      end
    end
  end
end

def big_shoe_rebounds()
  big_hash = game_hash()
  memo = 0 
  bigbounds = 0
  game_hash.each do |loc, data|
    data[:players].each do |obj|
      if obj[:shoe] > memo
        bigbounds = obj[:rebounds]
        memo = obj[:shoe]
      end
    end
  end
  bigbounds
end
def most_points_scored()
  big_hash = game_hash()
  player = 0 
  points = 0 
  big_hash.each do |loc, data|
    data.each do |k1, v1|
      if k1 == :players
        v1.each do |k2, v2|
          if k2[:points] > points
            player = k2[:player_name]
            points = k2[:points]
          end
        end
      end
    end
  end
  player
end

def winning_team
    hash = game_hash
    home_points = 0
    away_points = 0
    home_team = hash[:home][:team_name]
    away_team = hash[:away][:team_name]
    hash.each do |loc, info|
        info.each do |key, value|            
            if key == :players
                value.each do |k, v|
                    if loc == :home
                        home_points += k[:points]
                    else 
                        away_points += k[:points]
                    end
                end
            end
        end
    end
    home_points > away_points ? home_team : away_team
end
  
def player_with_longest_name()
  big_hash = game_hash()
  player = 0 
  length = 0 
  big_hash.each do |loc, data|
    data.each do |k1, v1|
      if k1 == :players
        v1.each do |k2, v2|
          name = k2[:player_name]
          if name.size > length
            player = k2[:player_name]
            length = name.size
          end
        end
      end
    end
  end
  player
end

def long_name_steals_a_ton?()
  big_hash = game_hash()
  player = 0 
  steal = 0
  player_long = player_with_longest_name()
  big_hash.each do |loc, data|
    data.each do |k1, v1|
      if k1 == :players
        v1.each do |k2, v2|
          name = k2[:player_name]
          if k2[:steals] > steal
            player = k2[:player_name]
            steal = k2[:steals]
          end
        end
      end
    end
  end
  player_long == player ? true : false
end
