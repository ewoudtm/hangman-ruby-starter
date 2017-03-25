class Noose
  attr_reader :noose

  def initialize
    @noose = Array.new(7,"=")#{Array.new(6,"")}
    #footing = Array.new(7,"=")
    #@noose << footing
  end

  def draw
    noose = @noose
    noose.each { |cell| print cell }
  end
end
