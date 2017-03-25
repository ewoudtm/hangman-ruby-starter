require File.expand_path('../random_word', __FILE__)
require File.expand_path('../noose', __FILE__)


class Hangman
  def initialize
    @random_word = RandomWord.new
    @bad_guesses_left = 10
    @new_noose = Noose.new
  end


  def greeting
    puts '###################################################################'
    puts '# Welcome to Hangman!                                             #'
    puts '###################################################################'
    puts '# Let me explain the rules:                                       #'
    puts '# I choose a word and tell you of how many letters it consists.   #'
    puts '# You have to guess the word by naming a letter of the alphabet.  #'
    puts '# If the word contains that letter, I will put that letter in all #'
    puts '# its proper places in the word.                                  #'
    puts '# If it isn\'t however I will deduct one of the 10 wrong guesses   #'
    puts '# you may make. You can make as many guesses as you want, as long #'
    puts '# as they are not wrong.                                          #'
    puts '###################################################################'
    puts ''
    puts 'Would you like to play? yes/no'
    #answer = gets.chomp.downcase
    answer = "yes"
  end

  def play!
    puts 'Hi from lib/hangman.rb!'
    puts @bad_guesses_left
    #random_word = @random_word
    puts @random_word.word
    draw_noose = @new_noose.draw
  end

  def no_game
    puts 'Okay, bye!'
  end



end
