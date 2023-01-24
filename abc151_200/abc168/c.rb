A,B,H,M = gets.chomp.split.map(&:to_i)


base = 60*12.0
bunshi = H * 60 + M


a = bunshi/base
b = M/60.0

# p Math.cos(a)

theta = (a-b).abs * 360



theta = [theta, 360 - theta].min

ans_r = A**2 + B**2 - 2*A*B*Math.cos(Math::PI * theta/180)

p Math.sqrt(ans_r)
