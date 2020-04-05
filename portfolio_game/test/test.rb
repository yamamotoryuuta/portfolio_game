require 'minitest/autorun'
require './games/input_name.rb'

class InputNameTest < Minitest::Test
  def test_input_name
    # assert_equal false, font_count_judge('a')
    # assert_equal true, font_count_judge('aa')
    # assert_equal true, font_count_judge('aaa')
    # assert_equal true, font_count_judge('aaaa')
    # assert_equal true, font_count_judge('aaaaa')
    # assert_equal true, font_count_judge('aaaaaa')
    # assert_equal false, font_count_judge('aaaaaaa')
    # assert_equal false, font_count_judge('aaaaaaaa')
    # assert_equal false, font_count_judge('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa')
    # assert_equal true, font_char_judge('ひらがな')
    # assert_equal false, font_char_judge('カタカナ')
    # assert_equal false, font_char_judge('漢字')
    # assert_equal false, font_char_judge('ENGLISH')
    # assert_equal false, font_char_judge('１２３４５６')
    # assert_equal false, font_char_judge('?><(%#!')
    # assert_equal false, font_char_judge('hiらガ１')
    # assert_equal "ok",warning_comment(true,true)
    # assert_equal "全角ひらがなで入力してください",warning_comment(true,false)
    # assert_equal "２〜６文字以内で入力してください",warning_comment(false, true)
    # assert_equal "ng",warning_comment(false,false)
    # assert_equal "ok",input_test("あいう")
    # assert_equal "全角ひらがなで入力してください",input_test("aioueo")
    # assert_equal "全角ひらがなで入力してください",input_test("12345")
    # assert_equal "２〜６文字以内で入力してください",input_test("あ")
    # assert_equal "ng",input_test("adank jiqoehbuandncaiub;")
    # assert_equal "ng",input_test("a")
  end
end