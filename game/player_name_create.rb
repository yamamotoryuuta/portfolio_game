player_name = nil
int = nil
def player_name_input
  # 名前を入力してください
  puts "名前を入力してください"

  player_name = gets.chomp
  #====================
  # プレイヤーの名前確認
  player_name = "ブート" if player_name == "" 

  text = <<~TEXT

  あなたの名前は
  『 #{player_name} 』
  でいいですか？

  TEXT
  puts text

  #====================
  # 名前の確認
  puts "１：　はい　２：　いいえ"

  int = gets.to_i

  if int == 2
    player_name_input
  else
    puts "#{player_name}"
  end
  
end
