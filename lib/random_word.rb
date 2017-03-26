class RandomWord
  attr_reader :word, :guessed, :letters_guessed

  WORDS = %w(programming monkeybusiness rubyesque styleguide)

  def initialize
    @word = WORDS.sample
    @guessed = Array.new(@word.length,"_")
    @letters_guessed = []
  end

  def guess
    print "Please enter a letter: "
    @letter = gets.chomp.downcase
    @letters_guessed << @letter
  end

  def letter_in_word?
    letter = @letter
    if (/#{letter}/ =~ word) >= 0
      letters = word.scan /\w/
      letters.each_with_index do |lttr, index|
        if lttr == letter
          @guessed[index] = letter
        end
      Render.success(letter)
      return true
      end
    else
      Render.wrong(letter)
      return false
    end
  end



  # def positions_for(characters: [])
  #   # for you to implement :)
  #   print "Please enter a letter: "
  #   letter = gets.chomp.downcase
  #   letters = word.scan /\w/
  #   letters.each do |ltr|
  #     if ltr == letter
  #       characters << letter
  #     else
  #       characters << ""
  #     end
  #   end
  #   print characters
  # end


end
