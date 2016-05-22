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
end