class Noose
  attr_reader :noose

  def initialize
    @noose = Array.new(7){Array.new(6," ")}
    #footing = Array.new(7,"#")
    #@noose << footing
    @noose[6][7] = "o"
  end

  def draw
    noose = @noose
    space = " "
    hash = "#"
    flower = "\\|/"
    noose.each do |row|
      5.times{print space}
      row.each do |cell|
        print cell
      end
      print "\n"
    end
    10.times{print hash}
    print flower
    8.times{print hash}
    print "\n"
  end

  def status
    noose = @noose
    #adding te pole
    (1..6).each { |i| noose[i][0] = "|" }
    # beam
    (1..4).each {|i| noose[0][i] = "-" }
    noose[0][0] = "+"
    noose[0][3] = "+"
    # rope
    noose[1][3] = "|"
    # head
    noose[2][3] = "O"
    # body
    noose[3][3] = "|"
    # left arm
    noose[3][2] = "/"
    # righ arm
    noose[3][4] = "\\"
    # left leg
    noose[4][2] = "/"
    # right leg
    noose[4][4] = "\\"

  end


end
