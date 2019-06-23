require 'csv'

FILENUM=5
WORDSNUM=13

arr_of_arrs = CSV.read("./words.csv")

for i in 1..FILENUM do
  fname="../data/sample" + i.to_s + ".txt"
  File.open(fname, "w") do |f|
    for j in 1..10 do
      f.puts( arr_of_arrs[0][rand(WORDSNUM)])
    end
  end
end
