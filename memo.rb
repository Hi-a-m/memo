require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
memo_type = gets.to_i
 
 if memo_type == 1
  puts "拡張子を除いたファイルを入力してください。"
      
  file_name = gets.chomp
      
  puts "メモの内容を記述してください。"
  puts "その後Ctrl+Dで保存します。"
     
  memo = STDIN.read
    
  CSV.open("#{file_name}.csv","w") do |csv|
  csv << ["#{memo}"]
  
 end    

 elsif memo_type == 2
  puts "拡張子を除いたファイルを入力してくでさい。"
  
  file_name = gets.chomp
       
         
  puts "メモの内容を記入してください。"
  puts  "完了したらCtrl + Dをおします。"
  
  memo = STDIN.read
  
  CSV.open("#{file_name}.csv","a") do |csv|
  csv << ["#{memo}"]
    
 end
 
 end