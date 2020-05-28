a,b,x = gets.chomp.split.map(&:to_f)

if (a**2)*b/2== x
  puts 45
elsif (a**2)*b/2 < x
  tan_t = 2 * (b/a) - 2 * x/(a**3)
  p 180 * Math.atan(tan_t)/Math::PI
else
  tan_t = (a * b*b)/(2 * x)
  p 180 * Math.atan(tan_t)/Math::PI
end


