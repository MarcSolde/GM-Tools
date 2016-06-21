require_relative '../domain/UseCaseController/CtrlRoller'
require_relative '../domain/UseCaseController/CtrlNameGen'
require_relative '../domain/UseCaseController/CtrlTreasureGen'
require_relative '../domain/Model/setUpDB'
require 'rubygems'
require 'data_mapper'

class Main
  db = SetUpDB.new()
  db.names()
  puts "Select your option"
  puts "1.- Die roller"
  puts "2.- Name Generator (10 names)"
  puts "3.- Treasure Generator"
  option = gets.chomp
  case option
    when "1"
      puts "Set XdY+-Z"
      uc = CtrlRoller.new(gets.chomp)
      uc.dieRoller()
    when "2"
      uc = CtrlNameGen.new()
      i = 0;
      while i < 10
       uc.generateName()
       i+=1
      end
    when "3"
      uc = CtrlTreasureGen.new()
      uc.generateTresaure
    else
      puts "Error"
  end
end