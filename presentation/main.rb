require_relative '../data/treasure_gen'
require_relative '../domain/UseCaseController/CtrlRoller'
require_relative '../domain/UseCaseController/CtrlNameGen'
require_relative '../domain/UseCaseController/CtrlTreasureGen'

class Main
  puts "Select your option"
  puts "1.- Die roller"
  puts "2.- Name Generator"
  puts "3.- Treasure Generator"
  option = gets.chomp
  case option
    when "1"
      puts "Set XdY+-Z"
      uc = CtrlRoller.new(gets.chomp)
      uc.dieRoller()
    when "2"
      uc = CtrlNameGen.new()
      uc.generateName()
    when "3"
      uc = CtrlTreasureGen.new()
      uc.generateTresaure
    else
      puts "Error"
  end
end