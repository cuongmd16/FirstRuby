require "cmath"

class PTB2

  attr_reader :a, :b, :c

  def initialize(a,b,c)
    @a=a
    @b=b
    @c=c
  end
	
    @n=-1
  def giai
    delta = send :delta1
    if @a != 0
    @n=-1
      if delta  > 0
      	@n=1
        @x1 = (-@b + Math.sqrt(delta))/(@a*2)
        @x2 = (-@b - Math.sqrt(delta))/(@a*2)
      elsif delta == 0
      	@n=0
        @x = -@b/(@a*2)
      end
    else
      @n=5 
    end
  end

  def ket_qua
	if (@x1 == nil) && (@x == nil) 
		puts "Bạn chưa thực hiện giải phương trình, vui lòng call method giai_phuong_trinh trước"
	elsif @n==1  
	    puts "x1: #{@x1} - x2: #{@x2}"
		elsif @n==0 
		    puts "PT nghiệm kép x1 = x2 = : #{@x}"
		    elsif @n==-1
			 puts "vo nghiem"
				elsif @n==5
		 		puts "Day khong phai pt bac 2"
				 
	end
  end

  
  private
  def delta1
    @delta = (@b*@b) - (4*@a*@c)
  end

  # def output(result)
  #   if result > 0 
  #     puts "x1: #{@x1} - x2: #{@x2}"
  #   elsif result == 0
  #     puts "Nghiem kep cua PT: #{@x1}"
  #   else
  #     puts "Phuong trinh vo nghiem"
  #   end
  # end
end

ptb2 = PTB2.new(1,5,-3)
ptb2.giai
ptb2.ket_qua
