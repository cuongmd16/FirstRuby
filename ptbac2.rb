require "cmath"

class PTB2

  attr_accessor :a, :b, :c
 
  def initialize(a,b,c)
    @a=a
    @b=b
    @c=c
  end

  def giai
    delta = send :delta1
    if @a != 0
      if delta  > 0
        @x1 = (-@b + Math.sqrt(delta))/(@a*2)
        @x2 = (-@b - Math.sqrt(delta))/(@a*2)
      elsif delta == 0
        @x1 = -@b/(@a*2)
      end
      output(delta)
    else
      puts "Pt khong phai bac 2"
    end
  end

  private
  def delta1
    @delta = (@b*@b) - (4*@a*@c)
  end

  def output(result)
    if result > 0 
      puts "x1: #{@x1} - x2: #{@x2}"
    elsif result == 0
      puts "Nghiem kep cua PT: #{@x1}"
    else
      puts "Phuong trinh vo nghiem"
    end
  end
end

kq = PTB2.new(1,5,-3)
kq.giai
