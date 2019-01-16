def get_first_name_of_season_winner(data, season)
  # code here
  winner = nil

  data.fetch(season).each do |contestant|
    if contestant.has_value?("Winner")
      full_name = contestant["name"].split(" ")
      winner = full_name[0]
    end
  end

  winner
end

def get_contestant_name(data, occupation)
  # code here
  name = nil

  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant.fetch("occupation") == occupation
        name = contestant.fetch("name")
      end
    end
  end

  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0

  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        count += 1
      end
    end
  end

  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  dividend = 0
  divisor = 0

  data[season].each do |contestant|
    dividend += contestant["age"].to_f
    divisor += 1
  end

  (dividend / divisor).round
end
