require_relative '../data/file_reader'
require_relative '../data/treasure_gen'
require_relative '../domain/UseCaseController/roller_ctrl'
require_relative '../domain/UseCaseController/CtrlNameGen'

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
      uc.dieRoller()
    when "2"
      uc = CtrlNameGen.new()
      uc.generateName()
    when "3"
      puts TresaureGen.genMinorGem()
    else
      puts "Error"
  end
end