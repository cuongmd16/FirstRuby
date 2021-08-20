puts "Nhap A:"
	a = gets()
	a = a.to_i
puts "Nhap B:"
	b = gets()
	b= b.to_i
puts "Nhap C:"
	c = gets()
	c = c.to_i

if a != 0 then
  delta = (b*b) - (4*a*c)
  sqrt_delta = CMath.sqrt(delta)
  if delta > 0 then
    x1 = (-b + sqrt_delta)/(a*2)
    x2 = (-b - sqrt_delta)/(a*2)
    puts "x: #{x} - x1: #{x1}"
  else
    if delta == 0 then
      x = -b/(a*2)
      puts "Phuong trinh co nghiem kep x=x1=: #{x2}"
    else
      puts "Phuong trinh vo nghiem"
    end
  end
else
  puts "Day ko phai phuong trinh bac 2"
end
