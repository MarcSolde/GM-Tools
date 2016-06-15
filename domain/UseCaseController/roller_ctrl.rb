require_relative '../Model/die_roller'

class RollerCtrl
  def initialize(die)
    @die = die
  end
  def dieRoller
    print "Die roll result: #{DieRoller::roll(@die)}"
  end
end