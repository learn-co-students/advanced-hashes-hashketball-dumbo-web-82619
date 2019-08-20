require "pry"



# Write your code here!
def game_hash
  info = {
  home:
    {team_name: "Brooklyn Nets",
    colors: ["Black", "White"],
    players: [
      {"Alan Anderson":
        {number: 0, 
        shoe: 16,
        points: 22,
        rebounds: 12,
        assists: 12,
        steals: 3,
        blocks: 1, 
        slam_dunks: 1}
      },
      {"Reggie Evans":
        {number: 30, 
        shoe: 14,
        points: 12,
        rebounds: 12,
        assists: 12,
        steals: 12,
        blocks: 12, 
        slam_dunks: 7}
      },
      {"Brook Lopez":
        {number: 11, 
        shoe: 17,
        points: 17,
        rebounds: 19,
        assists: 10,
        steals: 3,
        blocks: 1, 
        slam_dunks: 15}
      },
      {"Mason Plumlee":
        {number: 1, 
        shoe: 19,
        points: 26,
        rebounds: 11,
        assists: 6,
        steals: 3,
        blocks: 8, 
        slam_dunks: 5}
      },
      {"Jason Terry":
        {number: 31, 
        shoe: 15,
        points: 19,
        rebounds: 2,
        assists: 2,
        steals: 4,
        blocks: 11, 
        slam_dunks: 1}
      }
      
      ]
    },
  away:
    {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
         {"Jeff Adrien":
        {number: 4, 
        shoe: 18,
        points: 10,
        rebounds: 1,
        assists: 1,
        steals: 2,
        blocks: 7, 
        slam_dunks: 2}
      },
      {"Bismack Biyombo":
        {number: 0, 
        shoe: 16,
        points: 12,
        rebounds: 4,
        assists: 7,
        steals: 22,
        blocks: 15, 
        slam_dunks: 10}
      },
      {"DeSagna Diop":
        {number: 2, 
        shoe: 14,
        points: 24,
        rebounds: 12,
        assists: 12,
        steals: 4,
        blocks: 5, 
        slam_dunks: 5}
      },
      {"Ben Gordon":
        {number: 8, 
        shoe: 15,
        points: 33,
        rebounds: 3,
        assists: 2,
        steals: 1,
        blocks: 1, 
        slam_dunks: 0}
      },
      {"Kemba Walker":
        {number: 33, 
        shoe: 15,
        points: 6,
        rebounds: 12,
        assists: 12,
        steals: 7,
        blocks: 5, 
        slam_dunks: 12}
      }
      
        ]
    }
}
  info
end  

def num_points_scored (player_name)
  player_points = 0
  game_hash.each do |key, value|
    game_hash[key][:players].each do |player|
    if player.keys.join == player_name
      player_points = player[:"#{player_name}"][:points]
    end  
  end
end
player_points
end

def shoe_size (player_name)
  size = 0
  game_hash.each do |key, value|
    game_hash[key][:players].each do |player|
    if player.keys.join == player_name
      size = player[:"#{player_name}"][:shoe]
    end
    end
  end
  size
end

def team_colors (team)
   array = []
   game_hash.each do |key, value|
     if game_hash[key][:team_name] == team
       array = game_hash[key][:colors]
 end
 end
 array
 end
  
def team_names
  teams = []
  game_hash.each do |key, value|
    teams.push(game_hash[key][:team_name])
end
teams
end

def player_numbers (team)
  numbers = []
  game_hash.each do |key, value|
     if game_hash[key][:team_name] == team
       game_hash[key][:players].each do |player|
       numbers.push (player.values[0][:number])
     end
     end
   end
   numbers
 end
 
 def player_stats (player_name)
   stats = {}
   game_hash.each do |key, value|
    game_hash[key][:players].each do |player|
    if player.keys.join == player_name
      stats = player[:"#{player_name}"]
end 
end    
end
stats
end
  
def big_shoe_rebounds
  size = 0 
  rebounds = 0 
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
      #binding.pry
      if player.values[0][:shoe] > size
        size = player.values[0][:shoe]
     rebounds = player.values[0][:rebounds]
        end
end
end
rebounds
end




