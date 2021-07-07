# def get_first_name_of_season_winner(data, season)
#   data[season].each { |v| 
#   if v[:"status"] == "Winner"
#     return v[:"name"].split(" ").first
#   end
#   }
# end

def get_first_name_of_season_winner(data, season)
   data[season].each { |v| 
  if v["status"] == "Winner"
    return v["name"].split(" ").first
  end
  }
end

def get_contestant_name(data, occupation)
  # code here
  data.each { |key, val| 
    val.each { |v|
    if v['occupation'] == occupation
      return v["name"]
    end
    }
  }
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0 
  data.each { |key, val| 
    val.each { |v|
    if v['hometown'] == hometown
      count += 1
    end
    }
  }
  count
end

def get_occupation(data, hometown)
  # code here
  data.each { |key, val| 
    val.each { |v|
    if v['hometown'] == hometown
      return v["occupation"]
    end
    }
  }
end

def get_average_age_for_season(data, season)
  # code here
  sum = 0
  data[season].each { |v|
      sum += v['age'].to_f
  }
  return (sum / data[season].length).to_f.round
end
