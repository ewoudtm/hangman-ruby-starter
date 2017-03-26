class Noose
  attr_reader :noose

  def initialize
    @noose = Array.new(7){Array.new(6," ")}
    @noose[6][7] = "o" #flower
  end

  def draw
    space = " "
    pound = "#"
    flower = "\\|/"
    @noose.each do |row|
      5.times{print space}
      row.each do |cell|
        print cell
      end
      print "\n"
    end
    10.times{print pound}
    print flower
    8.times{print pound}
    print "\n\n"
  end

  def add(guesses_left)
    case guesses_left
    when 8  #adding te pole
      (1..6).each { |i| @noose[i][0] = "|" }
    when 7  # beam
      (1..4).each {|i| @noose[0][i] = "-" }
      @noose[0][0] = "+"
      @noose[0][3] = "+"
    when 6  # rope
      @noose[1][3] = "|"
    when 5  # head
      @noose[2][3] = "O"
    when 4  # body
      @noose[3][3] = "|"
    when 3  # left arm
      @noose[3][2] = "/"
    when 2  # righ arm
      @noose[3][4] = "\\"
    when 1  # left leg
      @noose[4][2] = "/"
    when 0  # right leg
      @noose[4][4] = "\\"
    end
  end

end
