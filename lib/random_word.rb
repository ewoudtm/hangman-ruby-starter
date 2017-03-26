class RandomWord
  attr_reader :word

  WORDS = %w(programming monkeybusiness rubyesque styleguide)

  def initialize
    @word = WORDS.sample
  end

  def positions_for(characters: [])
    # for you to implement :)
    print "Please enter a letter: "
    letter = gets.chomp
    letters = word.scan /\w/
    letters.each do |ltr|
      if ltr == letter
        characters << letter
      else
        characters << ""
      end
    end
    print characters
  end



end
