require_relative("../domain/Model/die_roller")

module TresaureGen
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

  def self.genMediumGem
    puts" "
    puts"---Medium gems and Jewelery"
    result = File.readlines("./data/tableGemMedium.txt").sample
    result2 = result.lines("1d")
    var = result2[1].lines("x") #var = [Y, x...]
    if var[1]
      die = DieRoller::roll("1d"+var[0])
      var2= var[1].lines(" ")
      ret = die.to_i*var2[0].to_i
    else
      var = result2[1].lines(" ")
      ret = DieRoller::roll("1d"+var[0])
    end
    return "Gem or jewelery worth "+ret.to_s+" gp"

  end
end