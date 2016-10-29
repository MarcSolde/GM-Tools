require_relative "../Model/file_reader.rb"

class CtrlNameGen 
    def initialize()
    end
    def generateName()
        puts FileReader::RandWord()
    end
end
