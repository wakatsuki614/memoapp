require "csv"

puts "1(新規でメモを作成) 2(既存のメモを編集する)"

memo_type = gets.chomp

if memo_type == "1"

    puts "拡張子を除いたファイルを入力してください"

    file_name = gets.chomp

    puts '"メモしたい内容を記入してください"'
    puts '"完了したら Ctrl + D をおします"'

    memo = STDIN.read

    CSV.open("#{file_name}.csv",'w') do |contents|
        contents << ["#{memo}"]
    end

elsif memo_type == "2"

    puts "拡張子を除いた編集したいファイルを入力してください"

    file_name = gets.chomp

    data = CSV.read("#{file_name}.csv")

    puts 
    puts data
    puts 
    puts '"編集内容を入力してください"'
    puts '"完了したら Ctrl + D をおします"'

    memo = STDIN.read

    CSV.open("#{file_name}.csv",'w') do |contents|
        contents << ["#{memo}"]
    end

else

    puts "1または2を入力してください"
    
end