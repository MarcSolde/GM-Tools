
module FileReader
  def self.RandWord
    file = File.read("data/names.txt")
    words = file.split(" ")
    name = words[rand(0..words.size - 1)] until name.to_s.size > 1
    surname = words[rand(0..words.size - 1)] until surname.to_s.size > 1
    return name+" "+surname
  end
  
  def self.readAllValues
    file = File.read("data/names.txt")
    words = file.split(" ")
    return words
  end
end
