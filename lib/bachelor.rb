def get_first_name_of_season_winner(data, season)
  data[season].each do |name|
    if name["status"] == "Winner"
      return name["name"].split.first
    end
  end
end


def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |person|
      if person["occupation"] == occupation
        return person["name"]
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.each do |person|
      if person["hometown"] == hometown
        count += 1
      end
    end
  end
  return count
end


def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.find do |person|
      if person["hometown"] == hometown
        return person["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  all_ages_combined = 0
  num_of_contestants = 0
  data[season].each do |person|
    all_ages_combined += person["age"].to_f
    num_of_contestants += 1
  end
  return (all_ages_combined/num_of_contestants).round
end
