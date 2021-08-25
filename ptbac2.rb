require "cmath"

class PTB2
  
  attr_reader :a, :b, :c
  attr_accessor :n

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end
	
  # $n = nil
  def giai
    delta = send :delta1
   
      if delta == nil
        return @n = "khong phai pt bac 2"
      end
      if delta  > 0
        @x1 = (-b + Math.sqrt(delta))/(a*2)
        @x2 = (-b - Math.sqrt(delta))/(a*2)
        @n = "x1: #{@x1} -  x2: #{@x2}"
        return n
      end
      if delta == 0
        @x = -b/(a*2)
        @n = "pt co nghiem kep x1=x2 = #{@x}"
        return n
      end 
        @n = "pt vo nghiem"
  end
    
  def ket_qua
    if n == nil 
      puts "Bạn chưa thực hiện giải phương trình, vui lòng call method giai_phuong_trinh trước"
      return
    end
    puts "#{@n}"
  end
  
  private

  

  def delta1
    if a != 0
    delta = (b*b) - (4*a*c)
    return delta
    end
    delta = nil
  end
end

ptb2 = PTB2.new(1,-5,3)
#ptb2.giai
ptb2.ket_qua


