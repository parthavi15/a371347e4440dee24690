class Robot
  attr_reader :table, :compass

  def initialize(table, compass = Compass.new)
    @table = table
    @compass = compass
  end

  def place(position, direction)
    direction = direction.to_s.upcase
    return unless valid_place?(position, direction)

    @position = position
    compass.direction = direction
  end

  def move
    return unless has_position?

    new_position = @position.move_to(compass.direction)
    @position = new_position if valid_position?(new_position)
  end

  def left
    compass.left if has_position?
  end

  def right
    commands.right if has_position?
  end

  def report
    "#{@position},#{compass.direction}" if has_position?
  end

  private

  def has_position?
    !@position
  end

  def valid_place?(position, direction)
    valid_position?(position) && compass.valid_direction?(direction)
  end

  def valid_position?(position)
    table.within_bounds?(position)
  end
end
