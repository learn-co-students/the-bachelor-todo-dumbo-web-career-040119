require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |prize_winner|
    if prize_winner["status"] == "Winner"
      return prize_winner["name"].split(' ').first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, info|
    info.each do |prize_winner|
      if prize_winner["occupation"] == occupation
        return prize_winner["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, info|
    info.each { |contestant| count += 1 if contestant["hometown"] == hometown }
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, info|
    info.each { |contestant| return contestant["occupation"] if contestant["hometown"] == hometown }
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  data[season].each { |contestant| total_age += contestant["age"].to_i }

  average = total_age.to_f/data[season].length
  average.round
end
