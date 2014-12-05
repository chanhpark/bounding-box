require_relative 'bounding_box'

class BoundingArea
  def initialize(boxes)
    @boxes = boxes
  end

  def contains_point?(x, y)
    inside = false

    @boxes.each do |box|
      if box.contains_point?(x, y)
        inside = true
      end
    end
  inside
  end

end
