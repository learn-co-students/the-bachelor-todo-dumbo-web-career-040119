require'pry'
#iterate through the data
#find the "Winner"
# return the first name of the winner

def get_first_name_of_season_winner(data, season)
  data.each do |season_num,season_data|
      if season_num == season
    season_data.each do |contestant_data|
      contestant_data.each do |detail, data|
        if data == "Winner"
             contestant_data.each do |detail,data|
          if detail == "name"
              return  data.split.first
            end
          end
        end
      end
    end
  end
end
end

def get_contestant_name(data, occupation)
  data.each do |season_num,season_data|
    season_data.each do |contestant_data|
      contestant_data.each do |detail, data|
          if detail == "occupation"
        contestant_data.each do |detail,data|
              if data == occupation
            contestant_data.each do |detail,data|
                if detail == "name"
                  return data
                end
              end
            end
          end
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0;
  data.each do |season_num,season_data|
    season_data.each do |contestant_data|
      contestant_data.each do |detail, data|
          if detail == "hometown"
        contestant_data.each do |detail,data|
              if data == hometown
                counter += 1
              end
            end
          end
        end
      end
    end
    return counter
end




def get_occupation(data, hometown)
  data.each do |season_num,season_data|
    season_data.each do |contestant_data|
      contestant_data.each do |detail, data|
          if detail == "hometown"
        contestant_data.each do |detail,data|
              if data == hometown
        contestant_data.each do |detail,data|
              if detail == "occupation"
                return data
              end
            end
          end
        end
      end
    end
  end
end
end

def get_average_age_for_season(data, season)
  ages = 0
  num_of_ages = 0
    data[season].each do |contestant_data|
      contestant_data.each do |detail,data|
        if detail == "age"
          num_of_ages += 1
          ages += data.to_f
        end
      end
    end
  return (ages/num_of_ages).round
end
