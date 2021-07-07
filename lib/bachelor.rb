def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |bio|
    bio.each do |key, value|
      if value == "Winner"
        fullname = bio["name"]
        return fullname.split(" ").first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, arrays|
    arrays.each do |bio|
      bio.each do |key, value|
        if value == occupation
          return bio["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  num_of_contestants = 0
  data.each do |season, array|
    array.each do |bio|
      bio.each do |key,val|
        if val == hometown
          num_of_contestants += 1
        end
      end
    end
  end
num_of_contestants
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, array|
    array.each do |bio|
      bio.each do |key, val|
        if val == hometown
          return bio["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age = 0
  count = 0
  data[season].each do |bio|
    bio.each do |key, val|
      if key == "age"
        age += val.to_f
        count += 1
      end
    end
  end
  average = (age/count).round
  return average
end
