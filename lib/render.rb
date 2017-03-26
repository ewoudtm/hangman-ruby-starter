#require File.expand_path('../noose', __FILE__)

class Render
  attr_reader :render

  def self.greeting
    puts '###################################################################'
    puts '###################################################################'
    puts '##                                                               ##'
    puts '## 888                                                           ##'
    puts '## 888                                                           ##'
    puts '## 888                                                           ##'
    puts '## 88888b.  8888b. 88888b.  .d88b. 88888b.d88b.  8888b. 88888b.  ##'
    puts '## 888 "88b    "88b888 "88bd88P"88b888 "888 "88b    "88b888 "88b ##'
    puts '## 888  888.d888888888  888888  888888  888  888.d888888888  888 ##'
    puts '## 888  888888  888888  888Y88b 888888  888  888888  888888  888 ##'
    puts '## 888  888"Y888888888  888 "Y88888888  888  888"Y888888888  888 ##'
    puts '##                              888                              ##'
    puts '##                         Y8b d88P                              ##'
    puts '##                          "Y88P"                               ##'
    puts '##                                                               ##'
    puts '###################################################################'
    puts '# Welcome to Hangman!                                             #'
    puts '###################################################################'
    puts '# Let me explain the rules:                                       #'
    puts '# I choose a word and tell you of how many letters it consists.   #'
    puts '# You have to guess the word by naming a letter of the alphabet.  #'
    puts '# If the word contains that letter, I will put that letter in all #'
    puts '# its proper places in the word.                                  #'
    puts "# If it isn't however I will deduct one of the 10 wrong guesses   #"
    puts '# you may make. You can make as many guesses as you want, as long #'
    puts '# as they are not wrong.                                          #'
    puts '###################################################################'
    puts ''
  end

  def self.border
    puts ""
    puts ""
    puts '###################################################################'
    puts ""
    puts ""
  end

  def self.success(letter)
    puts '###################################################################'
    puts "# Yes! The #{letter} is in the word!                              #"
    puts '###################################################################'
    puts '                 \ | /'
    puts '                 - O -'
    puts "                 / | \\"
  end

  def self.wrong(letter)
    puts '###################################################################'
    puts "# Unfortunately the #{letter} is not in the word!                 #"
    puts '###################################################################'
    puts '                 \ | /'
    puts '                 - O -'
    puts "                 / | \\"
  end

  def self.victory
    puts '###################################################################'
    puts '###################################################################'
    puts "###                                                             ###"
    puts "###       You WON! You guessed the word!                        ###"
    puts "###                                                             ###"
    puts '###################################################################'
    puts '###################################################################'
  end

  def self.lost
    puts '###################################################################'
    puts '###################################################################'
    puts "###                                                             ###"
    puts "###       You LOST! You were hung from the gallows!             ###"
    puts "###                                                             ###"
    puts '###################################################################'
    puts '###################################################################'
  end




  def self.bye
    puts "OK, bye!"
    exit
  end
end
