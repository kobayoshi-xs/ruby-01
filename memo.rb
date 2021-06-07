require 'csv'

p "1(新規でメモを作成する) 2(既存のメモを編集する)"
memo_type = gets

if memo_type.to_i == 1
  p "拡張子を除いたファイルを入力して下さい"
  memo_type2 = gets
  CSV.open("#{memo_type2}.csv", "w") do |csv|
  end
  p "メモしたい内容を記入して下さい"
  memo_type3 = gets.chomp
  CSV.open("#{memo_type2}.csv", "a") do |csv|
    csv << ["#{memo_type3}"]
  end
elsif memo_type.to_i == 2
  p "編集を行うファイル名を入力して下さい"
  memo_type4 = gets
  CSV.foreach("#{memo_type4}.csv") do |row|
    p row
  end
  p "追加したいデータを入力して下さい"
  memo_type5 = gets.chomp
  CSV.open("#{memo_type4}.csv", "a") do |csv|
  csv << ["#{memo_type5}"]
  end
else
  p "数字の1か2を入力して下さい"
end