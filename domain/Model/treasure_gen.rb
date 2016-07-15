module TreasureGen
=begin
  def self.genMinorGem
    puts "---Minor gems and Jewelry---"
    result =  File.readlines("./data/tableGemMinor.txt").sample
    result2 = result.lines("1d")
    var1 = result2[1].lines("+")
    b = false
    if var1[0].to_s == result2[1].to_s
      b = true
    end
    var2 = result2[1].lines("x") if b == true
    if b == false
      var3 = var1[1].lines(" ")
      die = DieRoller::roll("1d"+var1[0])
      return "Gem or jewelry worth "+(die.to_i+var3[0].to_i).to_s+" gp"
    elsif var2[0].to_s != result2[1].to_s
      die =DieRoller::roll("1d100")
      return "Gem or jewelry worth "+(die.to_i*10).to_s+" gp"
    else
      die = DieRoller::roll("1d6")
      return "Gem or jewelry worth "+die.to_s+" gp"
    end
  end
=end
  def self.genGem(s)
    puts "---"+s+" gems and Jewelry---"
    result = File.readlines("data/tableGemMinor.txt").sample if s=="Minor"
    result = File.readlines("data/tableGemMedium.txt").sample if s=="Medium"
    result1 = result.match /(\d+)d(\d+)([+|x])?(\d+)?/
    die = DieRoller::roll(result1[1]+"d"+result1[2]).to_i
    if (result1.size > 3) 
      if (result1[3] == "x")
        die *= result1[4].to_i
      else
        die += result1[4].to_i
      end
    end
    return die
  end
end