require_relative "../../data/file_reader"

class CtrlNameGen 
    def initialize()
    end
    def generateName()
        puts FileReader::RandWord()
    end
end
