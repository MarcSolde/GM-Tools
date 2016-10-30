require_relative '../Model/treasure_gen'
require_relative '../Model/die_roller'

class CtrlTreasureGen
    def initialize()
      puts "Set the total XP value of the monsters"
      @gp = (gets.chomp).to_i*DieRoller::roll("1d3+1")
      @aryTradeout = Array.new(3, 0)
      for i in 0..@gp/100
        ++@aryTradeout[0] if (rand(1..100) <= 10)
      end
      for i in 0..@gp/1000
        ++@aryTradeout[1] if (rand(1..100) <= 10)
      end
      for i in 0..@gp/5000
        ++@aryTradeout[2] if (rand(1..100) <= 10)
      end
      aux = 100*@aryTradeout[0]+1000*@aryTradeout[1]+5000*@aryTradeout[2]
      @gp -=aux if aux < @gp
    end
    def generateTresaure()
        #Ask for info about which kind of treasure the user wants to generate
        #Right now we only have the minor gem generator
      puts @aryTradeout
        for i in 1..@aryTradeout[0]
          unless DieRoller::roll("1d20") == 1
            puts "Gem or jewelry worth "+TreasureGen::genGem("Minor").to_s+" gp"
          else
            puts "Not yet implemented"
          end
        end
        for i in 1..@aryTradeout[1]
          unless DieRoller::roll("1d20") == 1
            puts "Gem or jewelry worth "+TreasureGen::genGem("Medium").to_s+" gp"
          else
            puts "Not yet implemented"
          end
        end
      puts "Plus "+@gp.to_s+" gp"
    end
end
