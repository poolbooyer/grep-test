def sercher
  head="grep "
  option=ARGV[0]+" "+ARGV[1]+" "
  path=ARGV.last
  
  if path=="all" then
    path="data/"
  end
  
  cmd=head+option+path+"*"
  result=`#{cmd}`
  
  puts "input file name"
  fname = STDIN.gets.chomp+".txt"
  
  File.open(fname, "a") do |f|
    f.puts(result)
  end
end
sercher