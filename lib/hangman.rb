require File.expand_path('../random_word', __FILE__)
require File.expand_path('../noose', __FILE__)
require File.expand_path('../render', __FILE__)

class Hangman
  def initialize
    @random_word = RandomWord.new
    @bad_guesses_left = 10
    @new_noose = Noose.new
  end

  def play!
    puts 'Hi from lib/hangman.rb!'
    puts @bad_guesses_left
    hangman_word = @random_word
    puts hangman_word.word
    hangman_word.guess
    if hangman_word.letter_in_word?
      Render.succes
      Render.status
    else
      @bad_guesses_left -= 1
      Render.wrong
      Render.status
    end

    new_status_noose = @new_noose.status
    draw_noose = @new_noose.draw
    puts ""
    arr =[]
    guess = hangman_word.positions_for()
    puts arr
  end

  def render_status

  end


end
