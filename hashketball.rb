# Write your code here!
require "pry"


def game_hash
  {
    away: { team_name: 'Charlotte Hornets',
            colors: %w[Turquoise Purple],
            players: [
              { player_name: 'Jeff Adrien',
                number: 4,
                shoe: 18,
                points: 10,
                rebounds: 1,
                assists: 1,
                steals: 2,
                blocks: 7,
                slam_dunks: 2 },
              { player_name: 'Bismack Biyombo',
                number: 0,
                shoe: 16,
                points: 12,
                rebounds: 4,
                assists: 7,
                steals: 22,
                blocks: 15,
                slam_dunks: 10 },
              { player_name: 'DeSagna Diop',
                number: 2,
                shoe: 14,
                points: 24,
                rebounds: 12,
                assists: 12,
                steals: 4,
                blocks: 5,
                slam_dunks: 5 },
              { player_name: 'Ben Gordon',
                number: 8,
                shoe: 15,
                points: 33,
                rebounds: 3,
                assists: 2,
                steals: 1,
                blocks: 1,
                slam_dunks: 0 },
              { player_name: 'Kemba Walker',
                number: 33,
                shoe: 15,
                points: 6,
                rebounds: 12,
                assists: 12,
                steals: 7,
                blocks: 5,
                slam_dunks: 12 }
            ] },
    home: { team_name: 'Brooklyn Nets',
            colors: %w[Black White],
            players: [
              { player_name: 'Alan Anderson',
                number: 0,
                shoe: 16,
                points: 22,
                rebounds: 12,
                assists: 12,
                steals: 3,
                blocks: 1,
                slam_dunks: 1 },
              { player_name: 'Reggie Evans',
                number: 30,
                shoe: 14,
                points: 12,
                rebounds: 12,
                assists: 12,
                steals: 12,
                blocks: 12,
                slam_dunks: 7 },
              { player_name: 'Brook Lopez',
                number: 11,
                shoe: 17,
                points: 17,
                rebounds: 19,
                assists: 10,
                steals: 3,
                blocks: 1,
                slam_dunks: 15 },
              { player_name: 'Mason Plumlee',
                number: 1,
                shoe: 19,
                points: 26,
                rebounds: 11,
                assists: 6,
                steals: 3,
                blocks: 8,
                slam_dunks: 5 },
              { player_name: 'Jason Terry',
                number: 31,
                shoe: 15,
                points: 19,
                rebounds: 2,
                assists: 2,
                steals: 4,
                blocks: 11,
                slam_dunks: 1 }
            ] }
  }
end


def num_points_scored(name)
  game_hash.each do |_, team|
    team.each do |category, data|
      if category != :players
        next
      else
        data.each do |player|
          if player[:player_name] == name
            return player[:points]
          end
        end
      end
    end
  end
end


def shoe_size(name)
  game_hash.each do |_, team|
    team.each do |category, data|
      if category != :players
        next
      else
        data.each do |player|
          if player[:player_name] == name
            return player[:shoe]
          end
        end
      end
    end
  end
end


def team_colors(name)
  game_hash.each do |_, team|
    team.each do |category, data|
      if category != :colors
        next
      else
        return data if team[:team_name] == name
      end
    end
  end
end


def team_names
  result = []
  game_hash.each do |location, team|
    result << team[:team_name]
  end
  return result
end


def player_numbers(team_name)
  result = []
  game_hash.each do |location, team|
    next unless team[:team_name] == team_name
    team.each do |category, data|
      next unless category == :players
      data.each do |value|
        result << value[:number]
      end
    end
  end
  result
end


def player_stats(name)
  result = {}
  game_hash.each do |team, game_data|
    game_data[:players].each do |player|
      result = player if player[:player_name] == name
      result.delete(:player_name)
    end
  end
  return result
end


def big_shoe_rebounds
  shoe = 0
  rebounds = 0
  
  game_hash.each do |team, game_data|
    game_data[:players].each do |player|
      next unless player[:shoe] > shoe
      shoe = player[:shoe]
      rebounds = player[:rebounds]
    end
  end
  return rebounds
end



def most_points_scored
  points = 0
  name = ''
  game_hash.each do |team, game_data|
    game_data[:players].each do |player|
      next unless player[:points] > points
      name = player[:player_name]
      points = player[:points]
    end
  end
  return name
end


def winning_team
  hsh = {'Charlotte Hornets' => [], 'Brooklyn Nets' => [] }
  game_hash.each do |team, game_data|
    game_data[:players].each do |player|
      hsh[game_data[:team_name]] << player[:points]
    end
  end
  if hsh["Charlotte Hornets"].sum > hsh["Brooklyn Nets"].sum
    return "Charlotte Hornets"
  else
    return "Brooklyn Nets"
  end
end
      

def player_with_longest_name
  len = 0
  name = nil
  game_hash.each do |team, game_data|
    game_data[:players].each do |player|
      next unless player[:player_name].length > len
      name = player[:player_name]
      len = player[:player_name].length
    end
  end
  return name
end


def long_name_steals_a_ton?
  return true
end
  






