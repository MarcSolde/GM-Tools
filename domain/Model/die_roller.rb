module DieRoller
  def self.roll(die)
    printerino = die.lines("d")
    printerino2 = printerino[1].lines("+")
    printerino2 = printerino[1].lines("-") if printerino2[0] == printerino[1]
    result = rand(1..printerino2[0].to_i)
    (printerino[0].to_i - 1).times do
      result += rand(1..printerino2[0].to_i)
    end
    result += printerino2[1].to_i
  end
end