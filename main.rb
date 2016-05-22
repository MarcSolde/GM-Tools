require_relative './data/file_reader'
require_relative './domain/UseCaseController/roller_ctrl'

class Main
  puts "Select your option"
  puts "1.- Die roller"
  puts "2.- Name Generator"
  puts "3.- Treasure Generator"
  option = gets.chomp
  case option
    when "1"
      puts "Set XdY+-Z"
      uc = RollerCtrl.new(gets.chomp)
      uc.UC()
    when "2"
      puts FileReader::RandWord()
    when "3"
      puts "monis"
  end

end