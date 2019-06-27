fi=Dir::entries(ARGV[0])
def read_file(path)
  r_data=[]
  r_data[0]=path
  File.open(path,"r") do |f|
    r_data[1]=f.read
  end
  return r_data
end
data=[]
for i in 0..(fi.length-1) do
  if fi[i].length>2 then
    data.push(read_file(ARGV[0]+fi[i]))
  end
end
def serch_infile(target,query)
  res=[] 
  for i in 0..(target.length-1) do
    if target[i].include?(query) then
      res[i]=true
    else
      res[i]=false
    end
  end
  return res
end
def serch_each(data,query)
  data.each do |line|
    puts line[0]
    target=line[1].split("\n")
    res=serch_infile(target,query)
    
    for i in 0..(res.length-1) do
     if res[i]==true then
        puts "L#{i+1}: #{target[i]}"
      end
      
    end
    puts ""
  end
end
query=ARGV[1]

serch_each(data,query)


