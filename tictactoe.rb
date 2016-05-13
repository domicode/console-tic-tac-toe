class TicTacToe
  SELECTIONS = {
    1 => 2,
    2 => 9,
    3 => 4,
    4 => 7,
    5 => 5,
    6 => 3,
    7 => 6,
    8 => 1,
    9 => 8
  }

  def intro
    puts 'Welcome to console tic tac toe'
    puts "the AI is unbeatable but anyway let's have some fun"
    puts 'Here is the grid'
    grid
    play
  end

  def grid
    puts ''
    puts '     |     |     '
    puts "  #{SELECTIONS[8]}  |  #{SELECTIONS[1]}  |  #{SELECTIONS[6]}  "
    puts '_____|_____|_____'
    puts '     |     |     '
    puts "  #{SELECTIONS[3]}  |  #{SELECTIONS[5]}  |  #{SELECTIONS[7]}  "
    puts '_____|_____|_____'
    puts '     |     |     '
    puts "  #{SELECTIONS[4]}  |  #{SELECTIONS[9]}  |  #{SELECTIONS[2]}  "
    puts '     |     |     '
    puts ''
  end

  def help
    puts 'no help at the moment, sorry'
  end

  def play
    puts 'make your move - select a case'
    selection = gets.chomp.to_i
    if validate(selection)
      SELECTIONS[SELECTIONS.key(selection)] = 'x'
      puts SELECTIONS
      # SELECTIONS[selection+1] = 'o'
      grid
      play
    end
  end

  def validate(input)
    if SELECTIONS[SELECTIONS.key(input)].is_a?(String)
      puts 'please take case which is not arleady taken'
      play
    elsif input >= 1 && input <= 9
      true
    else
      puts 'please choose a valid number'
      play
    end
  end

end

game = TicTacToe.new
game.intro
