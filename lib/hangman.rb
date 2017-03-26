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
      puts 'Hi from lib/hangman.rb!'
      puts @bad_guesses_left
      puts @random_word.word
      @random_word.guess
      if !@random_word.letter_in_word?
        @bad_guesses_left -= 1
        @noose.add(@bad_guesses_left)
      end
      Render.status
      break if won?
    end
  end

  def won?
    word = @random_word.word.scan /\w/
    @random_word.letters_guessed === word ? true : false
  end

  def lost?
    @bad_guesses_left == 0 ? true : false
  end


end
