#http://www.hackerearth.com/problem/algorithm/inverse-list/
def check_list(a_list)
	a_list.collect!{ |i| i-1 }
	return a_list == a_list.collect{|i| a_list[a_list[i]]}
end

total_num = gets.to_i
1.upto(total_num) do 
	n = gets.to_i
	a_list = gets.chomp
	a_list = a_list.split().collect{ |i| i.to_i }
	if check_list(a_list)
		puts "inverse"
	else
		puts "not inverse"
	end
end
