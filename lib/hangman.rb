require File.expand_path('../random_word', __FILE__)
require File.expand_path('../noose', __FILE__)
require File.expand_path('../render', __FILE__)

class Hangman
  attr_reader :bad_guesses_left, :random_word

  def initialize
    @random_word = RandomWord.new
    @bad_guesses_left = 9
    @noose = Noose.new
  end

  def play!
    while @bad_guesses_left != 0 do



      print @noose.draw
      print "Number of bad guesses left: #{@bad_guesses_left}\n\n"
      print "Letters chosen: #{@random_word.letters_guessed.join(" ")}\n\n"
      print "Your word: #{@random_word.guessed.join(" ")}\n\n"

      @random_word.guess

      if !@random_word.letter_in_word?
        @bad_guesses_left -= 1
        @noose.add(@bad_guesses_left)
      end

      if won?
        Render.victory
        if Hangman.play?
          game = Hangman.new
          game.play!
        else
          Render.bye
        end
      end

      if lost?
        Render.lost
        if Hangman.play?
          game = Hangman.new
          game.play!
        else
          Render.bye
        end
      end

    end

  end

  def won?
    word = @random_word.word.scan /\w/
    @random_word.guessed === word ? true : false
  end

  def lost?
    @bad_guesses_left == 0 ? true : false
  end

  def self.play?
    puts 'Would you like to play? yes/no'
    answer = gets.chomp.downcase
    if answer == "y" || answer == "yes"
      return true
    elsif answer == "n" || answer == "no"
      return false
    end
  end

end
