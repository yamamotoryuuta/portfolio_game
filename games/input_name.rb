require './games/message_dialog.rb'

class InputName
  include MessageDialog

  attr_reader :push_name
  
  NAME_LENGTH = [2,6]

  def initialize
    @name_length = false
    @name_chara = false
    @name_check = false
  end


  def entry_name
    first_message

    loop do
      get_name
      name_checker
      break if @name_check
    end
    @push_name = @get_name

    start_message(@push_name)
  end


  private

  def get_name
    @get_name = gets.chomp
  end


  def name_checker
    name_length_judge?
    name_chara_judge?
    warning_comment
  end


  def name_length_judge?
    length = @get_name.length
    @name_length = length.between?(*NAME_LENGTH)
  end


  def name_chara_judge?
    @name_chara = true if @get_name =~ /^[\p{Hiragana}]+$/
  end


  def warning_comment
    if @name_length && @name_chara
      @name_check = true
    elsif @name_length && !@name_chara
      puts "全角ひらがなで入力してください！"
    elsif !@name_length && @name_chara
      puts "２〜６文字以内で入力してください！"
    else
      puts "全角ひらがなを使って２〜６文字以内で入力してください。漢字と半角英数字は使えません!"
    end
  end
  
end