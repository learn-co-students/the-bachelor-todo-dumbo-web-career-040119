require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
# binding.pry

    data[season].each do |people|

      people.each do |k,v|
        if v == "Winner"
            full_name = people["name"]
            return full_name.split(' ').first
        end
      end
    end
end



def get_contestant_name(data, occupation)

  data.each do |season, array|
    array.each do |people|
      people.each do |k,v|
        if v == occupation
          return people["name"]
        end
      end
    end
  end
  # code here
end




def count_contestants_by_hometown(data, hometown)
  # code here
counter = 0
  data.each do |season, array|
    array.each do |hash|
      hash.each do |k,v|
        if v == hometown
          counter += 1
        end
      end
    end
  end
counter

end




def get_occupation(data, hometown)
  # code here
  data.each do |season, array|
    array.each do |hash|
      hash.each do |k,v|
        if v == hometown
          return hash["occupation"]
        end
      end
    end
  end

end




def get_average_age_for_season(data, season)
  j = []
         data[season.to_sym].each do |i|
binding.pry

                  i.collect do |b,v|
                        if b == :age
                        j << v
                        end
            end
      end
  t =""
  t = j.flatten.compact.size
  # a = j.reduce(:+)

              c = []
                      j.each do |i|
                      c << i.to_i
              end

  c = c.reduce(:+)

  c/t.to_i
end
