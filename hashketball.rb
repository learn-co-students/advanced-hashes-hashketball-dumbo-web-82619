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

def num_points_scored(player_name)
  game_hash.values.each do |game_data|
    game_data[:players].each do |player|
      return player[:points] if player[:name] == player_name
    end 
  end 
end 

def shoe_size(player_name)
  game_hash.values.each do |game_data|
    game_data[:players].each do |player|
      return player[:shoe] if player[:name] == player_name
    end 
  end 
end 

def team_colors(team_name)
  game_hash.values.each do |game_data|
    return game_data[:colors] if game_data[:team_name] == team_name
  end 
end 

def team_names
  array = []
  
  game_hash.values.each do |game_data|
    array << game_data[:team_name]
  end 
  array
end 

def player_numbers(team_name)
  array = []
  
  game_hash.values.each do |game_data|
    game_data[:players].each do |player|
      array << player[:number] if game_data[:team_name] == team_name
    end 
  end 
  array
end 

def player_stats(player_name)
  game_hash.values.each do |game_data|
    game_data[:players].each do |player|
      return player.reject! {|name| name == :name} if player[:name] == player_name
    end 
  end 
end 

def big_shoe_rebounds
 biggest_shoe = 0
 rebounds = 0 
 
  game_hash.values.each do |game_data|
    game_data[:players].each do |player|
      if player[:shoe] > biggest_shoe
        biggest_shoe = player[:shoe]
        rebounds = player[:rebounds]
      end 
    end 
  end 
  rebounds
end 

def most_points_scored
  most_points = 0 
  player_name = nil 
  
  game_hash.values.each do |game_data|
    game_data[:players].each do |player|
      if player[:points] > most_points
        most_points = player[:points]
        player_name = player[:name]
      end 
    end 
  end 
  player_name
end 

def winning_team
  new_hash = {}
  
  game_hash.values.each do |game_data|
    points_scored = 0  
    
    game_data[:players].each do |player|
      points_scored += player[:points] 
    end
    new_hash[game_data[:team_name]] = points_scored
  end 
  new_hash.key(new_hash.values.max)
end 

def player_with_longest_name
  array = []
  
  game_hash.values.each do |game_data|
    game_data[:players].each do |player|
      array << player[:name]
    end 
  end 
  array.max_by {|name| name.length}
end 

def 