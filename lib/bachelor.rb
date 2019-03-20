def get_first_name_of_season_winner(data, season)

 data[season].each do |k|
  winner = k.find {|x| x = "Winner"}
  return winner[1].split[0]
 end

end

def get_contestant_name(data, occupation)
 data.each do |k,v|
   v.each do |k, v|
     if k.values.include?(occupation)
       return k.values[0]
     end
   end
 end
end


def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |k,v|
   v.each do |k, v|
     if k.values.include?(hometown)
       count += 1
     end
   end
  end
count
end

def get_occupation (data, hometown)
  data.each do |k,v|
   v.each do |k, v|
     if k.values.include?(hometown)
       occ = k.values[3]
       return occ
     end
   end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0.0
  count = 0
  data[season].each do |k,v|
    total_age += k.values[1].to_i
    count += 1
  end

return (total_age / count).round
end
