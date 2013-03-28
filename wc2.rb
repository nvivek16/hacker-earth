#http://www.hackerearth.com/problem/algorithm/file-statistics/

filename = gets.chomp
f = File.open(filename,"r");
char_count = f.stat.size
line_count = 0
word_count = 0
f.readlines.each do |line|
	word_count += line.split.size
	line_count += 1
end
uid = f.stat.uid
gid = f.stat.uid
timestamp = f.stat.mtime.to_i
puts line_count, word_count, char_count, uid, gid, timestamp
