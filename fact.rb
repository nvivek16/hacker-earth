#http://www.hackerearth.com/problem/algorithm/small-factorials/
def fac(num)
	if num == 1
		return 1
	else
	   return (num * fac(num-1))
	end
end

total_num = gets.to_i
(0...total_num).each do 
	puts fac(gets.to_i)
end 
