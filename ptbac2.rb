require "cmath"
class Input
  attr_accessor :a, :b, :c
  
  def self.Giaipt(a,b,c)
    @a = a.to_i
    @b = b.to_i
    @c = c.to_i
    if a != 0 then
      delta = (b*b) - (4*a*c)
      sqrt_delta = CMath.sqrt(delta)
      if delta > 0 then
        x1 = (-b + sqrt_delta)/(a*2)
        x2 = (-b - sqrt_delta)/(a*2)
        puts "x1: #{x1} - x2: #{x2}"
      else
        if delta == 0 then
          x = -b/(a*2)
          puts "Phuong trinh co nghiem kep x=x1=: #{x}"
        else
          puts "Phuong trinh vo nghiem"
        end
      end
    else
      puts "Day ko phai phuong trinh bac 2"
    end
  end
end

