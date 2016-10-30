module TreasureGen
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