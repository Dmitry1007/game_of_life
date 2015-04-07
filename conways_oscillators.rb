class Grid
  attr_accessor :grid

  def initialize
    @grid = ["[0,0,0]\n[0,0,0]\n[0,0,0]"]
  end

  def column
    @grid = ["[0,X,0]\n[0,X,0]\n[0,X,0]"]
  end

  def oscillate
    if @grid == ["[0,X,0]\n[0,X,0]\n[0,X,0]"]
      @grid = ["[0,0,0]\n[X,X,X]\n[0,0,0]"]
    elsif @grid == ["[0,0,0]\n[X,X,X]\n[0,0,0]"]
      @grid = ["[0,X,0]\n[0,X,0]\n[0,X,0]"]
    elsif @grid == ["[0,0,0]\n[0,0,0]\n[0,0,0]"]
      @grid = ["[0,X,0]\n[0,X,0]\n[0,X,0]"]
    end
  end
end

gridastic = Grid.new
puts gridastic.grid

4.times do
  puts "\n"
  puts gridastic.oscillate
  puts " "
end
