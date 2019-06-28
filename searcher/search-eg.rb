def read_file(path)
  r_data=[]
  r_data[0]=path
  File.open(path,"r") do |f|
    r_data[1]=f.read
  end
  return r_data
end
def search_infile(target,query)
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
def search_each(data,query)
  data.each do |line|
    puts line[0]
    target=line[1].split("\n")
    res=search_infile(target,query)
    count=0
    for i in 0..(res.length-1) do
      if res[i]==true then
        puts "L#{i+1}: #{target[i]}"
      else
        count+=1
      end
    end
    if count==(res.length) then
      puts "Not found"
    end
    puts ""
  end
end

def search
  fi=Dir::entries(ARGV[0])
  data=[]
  for i in 0..(fi.length-1) do
    if fi[i].length>2 then
      data.push(read_file(ARGV[0]+fi[i]))
    end
  end

  query=ARGV[1]
  search_each(data,query)
end

search