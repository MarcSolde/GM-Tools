require_relative '../../data/treasure_gen'

class CtrlTreasureGen
    def initialize()
    end
    def generateTresaure()
        #Ask for info about which kind of treasure the user wants to generate
        #Right now we only have the minor gem generator
        puts TreasureGen::genMinorGem()
    end
end
