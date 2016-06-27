require_relative '../../data/file_reader'

class SetUpDB
    def initialize()
    end
    def names 
        listNames = FileReader::readAllValues
        listNames.each { |x|
            #add to db
        }
    end
end