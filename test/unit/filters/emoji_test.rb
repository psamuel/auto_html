require File.expand_path('../../unit_test_helper', __FILE__)

class EmojiTest < Test::Unit::TestCase
  def test_transform
    filter = AutoHtml::Emoji.new
    result = filter.call(':joy:')
    assert_equal '<img class="emoji" title=":joy:" alt=":joy:" height="20" witdh="20" align="absmiddle" src="/images/emoji/unicode/1f602.png" />', result
  end
end
