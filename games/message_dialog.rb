module MessageDialog
  def first_message
    puts <<~EOS
      初めまして！
      まずはあなたの名前を教えてください。
      （全角ひらがなを使って２〜６文字以内で入力してください。）
    EOS
  end

  def start_message(brave_name)
    puts <<~EOS
    *５秒ごとに自動でスクロールされます！
    ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
    勇者#{brave_name}は旅に出ることにした！

    少し歩くとモンスターが飛び出して来た！

    モンスターとバトルになった！！
    ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
    EOS
  end


  def attack_message(**params)
    attack_type = params[:attack_type]
    
    puts "#{name}の攻撃！！"
    puts '必殺攻撃！！' if attack_type == 'special_attack'
    attack_speed
  end


  def damage_message(**params)
    target = params[:target]
    damage = params[:damage]

    puts <<~EOS

      #{target.name}は #{damage} のダメージを受けた！
      #{target.name}の残りの HP：#{target.hp}
    EOS
  end


  def end_message(result)
    if result[:brave_win_flag]
      puts <<~EOS
        ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

        #{result[:brave_name]}は勝った！！
        #{result[:exp]}の経験値と#{result[:gold]}のゴールドを手に入れた！！

        ！！WIN！！
        ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
      EOS
    else
      puts  <<~EOS
        ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

        #{result[:brave_name]}は負けた・・・
        目の前が真っ暗になった

        ！！LOSE！！
        ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
      EOS
    end
  end


  def transform_message(**params)
    origin_name = params [:origin_name]
    transform_name = params[:transform_name]

    puts <<~EOS
    
      #{origin_name}は怒っている！
      #{origin_name}は#{transform_name}に変身した！
    
      ------------------------------------
    EOS
    attack_speed
  end


  def attack_speed
    sleep(1.5)
  end
end