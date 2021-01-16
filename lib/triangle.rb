class Triangle
 def initialize(l1, l2, l3)
  @l1,@l2, @l3 = [l1,l2,l3].sort

  end

  def kind
    raise TriangleError if @l1 + @l2 <= @l3


   if
       @l1 == @l2 && @l2 == @l3
       :equilateral
      elsif @l1 == @l2 || @l1 == @l3 || @l2 == @l3
        :isosceles
     
      else 
        :scalene
      end
    end


class TriangleError < StandardError
end

end