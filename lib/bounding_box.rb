class BoundingBox
  attr_reader :width, :height, :left, :right, :top, :bottom

  def initialize (x, y, width, height)
    @width = width
    @height = height
    @left = x
    @right = width + x
    @top = height + y
    @bottom = y
  end

  def contains_point?(x, y)
    if (x >= @left) && (x <= @right) && (y >= @bottom) && (y <= @top)
      return true
    else
      return false
    end
  end

end
