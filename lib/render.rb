require File.expand_path('../noose', __FILE__)

class Render
  attr_reader :render

  def self.greeting
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

  def self.status

    puts "Your word: " + hangman_word.guessed.join(" ")


  end

  def self.wrong
    puts '###################################################################'
    puts '# Unfortunately that letter is not in the word!                   #'
    puts '###################################################################'
    puts ''
    puts ''
  end

  def self.success
    puts '###################################################################'
    puts '# Yes! That letter is not in the word!                            #'
    puts '###################################################################'
    puts ''
    puts ''
  end


  def self.bye
    puts "OK, bye!"
  end
end
