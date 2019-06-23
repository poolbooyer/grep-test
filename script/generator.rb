require 'csv'

arr_of_arrs = CSV.read("./words.csv")
p rand(13)
for i in 1..5 do
  fname="../data/sample" + i.to_s + ".txt"
  File.open(fname, "a") do |f|
    for j in 1..10 do
      f.puts( arr_of_arrs[0][rand(13)])
    end
  end
end
