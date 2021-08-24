require "cmath"

class PTB2

  attr_reader :a, :b, :c
  attr_accessor :n

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end
	
  $n = nil
  def giai
    @n = 0
    delta = send :delta1
    if a != 0
      if delta  > 0
        @x1 = (-b + Math.sqrt(delta))/(a*2)
        @x2 = (-b - Math.sqrt(delta))/(a*2)
      elsif delta == 0
      	@n = 1
        @x = -b/(a*2)
      else
        @n = 2
      end
    else
      @n = 3
    end
  end

  def ket_qua
		if n.nil?
      puts "Bạn chưa thực hiện giải phương trình, vui lòng call method giai_phuong_trinh trước"
    elsif n == 0
      puts "Pt co 2 nghiem la x1: #{@x1} - x2: #{@x2}"
	  elsif n == 1
      puts "Nghiem kep x = #{@x}"
    elsif n == 2
      puts "PT vo nghiem"
    else
      puts "Non pt2"
    end
  end
  
  private
  def delta1
    @delta = (b*b) - (4*a*c)
  end
end

ptb2 = PTB2.new(1,2,6)
ptb2.giai
ptb2.ket_qua


