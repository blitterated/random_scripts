class Holiday
  FIRST_LINE_LENGTH = 1
  LEVEL_HEIGHT      = 3

  def initialize(levels)
    @levels              = levels.to_i < 1 ? 3 : levels.to_i
    @last_line_length    = 5 + ((@levels - 1) * 2)
    @current_line_length = FIRST_LINE_LENGTH
  end

  def draw_level
    (1..LEVEL_HEIGHT).each do |line|
      puts ("*" * @current_line_length).center(@last_line_length)
      @current_line_length += 2  unless line == 3
    end
    @current_line_length = @current_line_length - 2
  end

  def draw_trunk
    trunk_width = trunk_height = ((@last_line_length / 2) - 2).round
    (1..trunk_height).each { puts ("|" * trunk_width).center(@last_line_length) }
  end

  def draw
    (1..@levels).each { draw_level }
    draw_trunk
  end
end

Holiday.new(ARGV.first).draw
