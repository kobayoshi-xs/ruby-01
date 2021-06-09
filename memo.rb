require 'csv'

p "1(新規でメモを作成する) 2(既存のメモを編集する)"
memo_type = gets

if memo_type.to_i == 1
  p "拡張子を除いたファイルを入力して下さい"
  memo_type2 = gets.chomp
   p "メモしたい内容を記入して下さい"
   p "終了したらCtrl + Dを押して下さい"
  memo_type3 = $stdin.read
  CSV.open("#{memo_type2}.csv", "w") do |csv|
    csv << ["#{memo_type3}"]
  end
elsif memo_type.to_i == 2
  p "編集を行うファイル名を入力して下さい"
  memo_type4 = gets.chomp
  CSV.foreach("#{memo_type4}.csv") do |row|
    p row
  end
  p "追加したいデータを入力して下さい"
  p "終了したらCtrl + Dを押して下さい"
  memo_type5 = $stdin.read
  CSV.open("#{memo_type4}.csv", "a") do |csv|
    csv << ["#{memo_type5}"]
  end
else
  p "数字の1か2を入力して下さい"
end
