require 'csv'

FILENUM=5
WORDSNUM=13
def generator
  words = CSV.read("./words.csv")
  for i in 1..FILENUM do
    fname="../data/sample" + i.to_s + ".txt"
    File.open(fname, "w") do |f|
      for j in 1..10 do
        f.puts( words[0][rand(WORDSNUM)])
      end
    end
  end
end
generator