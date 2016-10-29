require_relative '../Model/treasure_gen'


class CtrlTreasureGen
    def initialize()
    end
    def generateTresaure()
        #Ask for info about which kind of treasure the user wants to generate
        #Right now we only have the minor gem generator
        puts "Gem or jewelry worth "+TreasureGen::genGem("Minor").to_s+" gp"
        puts "Gem or jewelry worth "+TreasureGen::genGem("Medium").to_s+" gp"
        #puts TreasureGen::genMediumGem()
    end
end

=begin
Code for XP to gen and shit like that
1.- Introduce XP value earnt by the adventure/PCs
2.- Calculate, from bigger to smaller treasure, which rolls will be made
3.- Roll for normal or special loot, for each treasure
4.- Output the result
DataMapper.setup(:default, 'postgres://user:password@hostname/database')

=end
