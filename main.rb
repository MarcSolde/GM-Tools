class Main
  puts "Select your option"
  puts "1.- Die roller"
  puts "2.- Name Generator"
  puts "3.- Treasure Generator"
  option = gets.chomp
  case option
    when "1"
      puts "Indicate how many and how many faces"
      die = gets.chomp
      printerino = die.lines("d")
      printerino2 = printerino[1].lines("+")
      printerino2 = printerino[1].lines("-") if printerino2[0] == printerino[1]
      result = rand(0..printerino2[0][0].to_i)
      (printerino[0][0].to_i - 1).times do
        result += rand(0..printerino2[0][0].to_i)
      end
      print "Die roll result: "
      puts result + printerino2[1].to_i
    when "2"
      puts "name"
    when "3"
      puts "monis"
  end

end