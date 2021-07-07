require 'pry'

def get_first_name_of_season_winner(data, season)
  winner = ""
  data.each do |season_name, contestant_stats|
    if season_name == season
    contestant_stats.each do |attribute|
      if attribute["status"] == "Winner"
        winner = attribute["name"]
        end
      end
    end
  end
  winner.split[0]
end

def get_contestant_name(data, occupation)
  name = ""
  data.each do |season_name, contestant_stats|
    contestant_stats.each do |attribute|
      if attribute["occupation"] == occupation
        name = attribute["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_name, contestant_stats|
    contestant_stats.each do |attribute|
      if attribute["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  occupation = ""
  data.each do |season_name, contestant_stats|
    contestant_stats.each do |attribute|
      if attribute["hometown"] == hometown
        return occupation = attribute["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  average_age = []
  final_age = 0
  data.each do |season_name, contestant_stats|
    if season_name == season
    contestant_stats.each do |attribute|
      average_age << attribute["age"].to_f
      end
    end
  end
  final_age = average_age.inject { |sum, element| sum + element } / average_age.size
  final_age.round
end
