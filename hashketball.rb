# Write your code here!
require "pry"

def game_hash
  {
    home: 
      { team_name: "Brooklyn Nets",
        colors: ["Black", "White"],
        players: [
          { name: "Alan Anderson",
            number: 0,
            shoe: 16,
            points: 22,
            rebounds: 12,
            assists: 12,
            steals: 3,
            blocks: 1,
            slam_dunks: 1 },
          { name: "Reggie Evans",
            number: 30,
            shoe: 14,
            points: 12,
            rebounds: 12,
            assists: 12,
            steals: 12,
            blocks: 12,
            slam_dunks: 7 },
          { name: "Brook Lopez",
            number: 11,
            shoe: 17,
            points: 17,
            rebounds: 19,
            assists: 10,
            steals: 3,
            blocks: 1,
            slam_dunks: 15 },
          { name: "Mason Plumlee",
            number: 1,
            shoe: 19,
            points: 26,
            rebounds: 11,
            assists: 6,
            steals: 3,
            blocks: 8,
            slam_dunks: 5 },
          { name: "Jason Terry",
            number: 31,
            shoe: 15,
            points: 19,
            rebounds: 2,
            assists: 2,
            steals: 4,
            blocks: 11,
            slam_dunks: 1 }
        ] },
    
    away: 
    { team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        { name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2 },
        
        { name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10 },
        
        { name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5 },
        
        { name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0 },
        
        { name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12 }
      ] }
  }
end

def num_points_scored(inquired_player)
  game_hash.each do |h_or_a, team_info|
    team_info.each do |descriptions, team_data|
      next unless descriptions == :players
      
      team_data.each do |players_data|
        if players_data[:name] == inquired_player 
          return players_data[:points]
        end
      end 
    end 
  end 
end

def shoe_size(inquired_player)
  game_hash.each do |h_or_a, team_info|
    team_info.each do |descriptions, team_data|
      next unless descriptions == :players
      
      team_data.each do |players_data|
        if players_data[:name] == inquired_player 
          return players_data[:shoe]
        end
      end 
    end 
  end 
end 

def team_colors(inquired_team)
  game_hash.each do |area, team|
    if team[:team_name] == inquired_team  
      return game_hash[area][:colors] 
    end 
  end 
end 

def team_names
  array = []
  game_hash.each do |area, team_info|
    team_info.each do |description, team_data|
      next unless description == :team_name
      array << team_data
    end
  end 
  array
end 

def player_numbers(team_name)
  array = []
  
  game_hash.each do |area, team|
    next unless team[:team_name] == team_name
    
    team.each do |characteristic, data|
      next unless characteristic == :players
      
      data.each do |player_hash|
        array << player_hash[:number]
      end 
    end 
  end 
  array
end 

def player_stats(player_name)
  game_hash.each do |area, team|
    team.each do |characteristic, data|
      next unless characteristic == :players 
      
      data.each do |player_hash|
        if player_hash[:name] == player_name
          return player_hash.reject! {|n| n == :name}
        end 
      end 
    end 
  end 
end

def big_shoe_rebounds
  biggest_shoe = 0 
  rebounds = 0 
  
  game_hash.each do |area, data| 
    data[:players].each do |player_hash|
      if player_hash[:shoe] > biggest_shoe
        biggest_shoe = player_hash[:shoe]
        rebounds = player_hash[:rebounds]
      end 
    end 
  end 
  rebounds
end 

def most_points_scored
  most_points = 0
  player = nil 
  
  game_hash.each do |area, data|
    data[:players].each do |player_hash|
      if player_hash[:points] > most_points
        most_points = player_hash[:points]
        player = player_hash[:name]
      end 
    end 
  end 
  player
end 

def winning_team
  new_hash = {}
  
  game_hash.values.each do |game_data|
    points_scored = 0 
    
    game_data[:players].each do |player_hash|
      points_scored += player_hash[:points]
    end 
    new_hash[game_data[:team_name]] = points_scored
  end 
  new_hash.key(new_hash.values.max)
end 
  
def player_with_longest_name
  array = []
  
  game_hash.values.each do |game_data|
    game_data[:players].each do |player_hash|
      array << player_hash[:name]
    end 
  end
  array.max_by {|player_name| player_name.length}
end 


