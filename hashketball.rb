# Write your code here!
require "pry"
def game_hash
  newhash = {
    :home => {
      :team_name => 'Brooklyn Nets',
      :colors => ["Black", "White"],
      :players => [
        "Alan Anderson" => {
          :number => 0  , 
          :shoe => 16, 
          :points => 22,
          :rebounds =>12 ,
          :assists => 12,
          :steals =>3,
          :blocks =>1,
          :slam_dunks =>1
          },
          "Reggie Evans" => {
            :number => 30, 
            :shoe => 14, 
            :points => 12,
            :rebounds =>12 ,
            :assists => 12,
            :steals =>12,
            :blocks =>12,
            :slam_dunks =>7
          },
          "Brook Lopez" => {
            :number => 11, 
            :shoe => 17, 
            :points => 17,
            :rebounds =>19 ,
            :assists => 10 ,
            :steals =>3 ,
            :blocks => 1 ,
            :slam_dunks =>15
          },
          "Mason Plumlee" => {
            :number => 1 , 
            :shoe => 19, 
            :points => 26,
            :rebounds =>11,
            :assists => 6,
            :steals =>3,
            :blocks => 8 ,
            :slam_dunks =>5
          },
          "Jason Terry" => {
            :number => 31, 
            :shoe => 15, 
            :points => 19,
            :rebounds =>2,
            :assists => 2,
            :steals =>4,
            :blocks => 11,
            :slam_dunks =>1
          }
      ]
    },
    :away => {
      :team_name => 'Charlotte Hornets',
      :colors => ["Turquoise", "Purple"],
      :players => [
        "Jeff Adrien" => {
          :number => 4   , 
          :shoe => 18, 
          :points => 10 ,
          :rebounds =>1  ,
          :assists => 1 ,
          :steals =>2 ,
          :blocks =>7 ,
          :slam_dunks =>2 
          },
          "Bismack Biyombo" => {
            :number => 0, 
            :shoe => 16, 
            :points => 12,
            :rebounds =>4  ,
            :assists => 7 ,
            :steals =>22,
            :blocks =>15,
            :slam_dunks =>10
          },
          "DeSagna Diop" => {
            :number => 2 , 
            :shoe => 14, 
            :points => 24,
            :rebounds =>12 ,
            :assists => 12 ,
            :steals => 4 ,
            :blocks => 5  ,
            :slam_dunks =>5 
          },
          "Ben Gordon" => {
            :number => 8 , 
            :shoe => 15, 
            :points => 33,
            :rebounds => 3 ,
            :assists => 2 ,
            :steals =>1 ,
            :blocks => 1  ,
            :slam_dunks =>0 
          },
          "Kemba Walker" => {
            :number => 33, 
            :shoe => 15, 
            :points => 6 ,
            :rebounds =>12,
            :assists => 12,
            :steals =>7 ,
            :blocks => 5 ,
            :slam_dunks =>12
          }
      ]
    }
  }
  newhash
end

def good_practices
  game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    binding.pry
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

#good_practices


def num_points_scored(curPlayer)
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      next unless attribute == :players
        data.each do |names|
          if names.keys.include?(curPlayer)
            return names[curPlayer][:points]
          end
          #binding.pry
      end
    end
  end
end

def shoe_size(curPlayer)
game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      next unless attribute == :players
        data.each do |names|
          if names.keys.include?(curPlayer)
            return names[curPlayer][:shoe]
          end
          #binding.pry
      end
    end
  end
end

def team_colors(teamname)
  game_hash.each do |location, team_data|
    if team_data[:team_name] == teamname
      return game_hash[location][:colors]
  end
end
end

def team_names
  game_hash.collect do |location, team_data|
    team_data[:team_name]
  end
end

def player_numbers(teamname)
  nums = []
  game_hash.each do |location, team_data|
    next unless team_data[:team_name] == teamname

    team_data.each do |attribute, data|
      next unless attribute == :players
      
      data.each do |datas|
        datas.each do |names,data|
        nums << datas[names][:number]
        #binding.pry
      end
      end
    end
  end
  nums
end

def player_stats(name)
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      next unless attribute == :players
      
      data.each do |datas|
        datas.each do |names,data|
          if name == names
            return data
          end
        #binding.pry
      end
      end
    end
  end
end

def big_shoe_rebounds
  rebounds = 0
  curSize = 0
   game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      next unless attribute == :players
      data.each do |datas|
        datas.each do |names,data|
          if data[:shoe] > curSize
            curSize = data[:shoe]
            rebounds = data[:rebounds]
          end
        
        #binding.pry
        end
      end
    end
  end
  rebounds
end

def most_points_scored 
  name = ""
  curPoints = 0 
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      next unless attribute == :players
      data.each do |datas|
        datas.each do |names,data|
          if data[:points] > curPoints
            name = names
            curPoints = data[:points]
          end
        end
      end
    end
  end
    return name
end

def winning_team
end

def player_with_longest_name
  curName = ""
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      next unless attribute == :players
      data.each do |datas|
        datas.each do |names,data|
          if names.length > curName.length
            curName = names
          end
        end
        #binding.pry
      end
    end
  end
  curName
end
  
# def long_name_steals_a_ton
#   longname = player_with_longest_name
#   steals = game_hash[:away][:players][longname][:steals]
#   binding.pry
# end

# long_name_steals_a_ton
