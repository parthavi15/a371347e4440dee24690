class Play
  def initialize
  end

  def divider_yellow
    puts '======'.yellow
  end

  def print_menu
    puts '---------'.blue
    divider_yellow
    puts 'choose an option'.yellow
    puts 'MAKE'
    puts 'PLACE'
    puts 'MOVE'
    puts 'LEFT'
    puts 'RIGHT'
    puts 'REPORT'
    divider_yellow
    puts 'bonus option'.yellow
    puts 'destroy robot'
    puts 'table'
    puts 'grid'
    puts 'exit'
    divider_yellow
    print 'selection'.yellow
    gets.chomp.to_s.upcase
  end
end
