module DieRoller
#Using regex
  def self.roll(die)
    die1 = die.match /(\d+)d(\d+)([+|-])?(\d+)?/
    result = 0
    (die1[1].to_i).times do
      result += rand(1..die1[2].to_i)
    end
    if (die1.size > 3)
      if (die1[3] == "-") 
        result -= die1[4].to_i
      else 
        result += die1[4].to_i
      end
    end
    return result
  end
end