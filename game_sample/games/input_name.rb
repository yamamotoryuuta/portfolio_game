class InputName

  def initialize
    @get_name
    @name_count = false
    @name_char = false
    @name_check = false
  end


  def input_name
    puts <<~EOS
      初めまして！
      まずはあなたの名前を教えてください。
      （全角ひらがなを使って２〜６文字以内で入力してください。）
    EOS

    loop do
      get_name
      name_count_judge?
      name_char_judge?
      warning_comment
      break if @name_check
    end
    puts "成功"
  end


  def get_name
    @get_name = gets.chomp
  end


  def name_count_judge?
    count = @get_name.length

    @name_count = count.between?(2,6)
  end


  def name_char_judge?
    @name_char = true if @get_name =~ /^[\p{Hiragana}]+$/
  end


  def warning_comment
    if @name_count && @name_char
      @name_check = true
    elsif @name_count == true && @name_char == false
      puts "全角ひらがなで入力してください！"
    elsif @name_count == false && @name_char == true
      puts "２〜６文字以内で入力してください！"
    else
      puts "全角ひらがなを使って２〜６文字以内で入力してください。漢字と半角英数字は使えません!"
    end
  end
  
end

# def input_test(hoge)
  hage = InputName.new
  hage.input_name
# end