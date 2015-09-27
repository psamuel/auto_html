require File.expand_path('../unit_test_helper', __FILE__)

class AutoHtmlTest < Test::Unit::TestCase

  def test_should_be_raw_input_when_no_filters_provided
    format = AutoHtml::Format.new
    input  = "Hey check out my blog => http://rors.org"
    result = format.(input)
    assert_equal input, result 
  end

  def test_should_apply_simple_format_filter
    format = AutoHtml::Format.new(SimpleFormat)
    result = format.call "Hey check out my blog => http://rors.org"
    assert_equal "<p>Hey check out my blog => http://rors.org</p>", result
  end

  def test_should_apply_simple_format_and_image_filter
    format = AutoHtml::Format.new(SimpleFormat, Image.new(alt: nil))
    result = format.call "Check the logo: http://rors.org/images/rails.png"
    assert_equal '<p>Check the logo: <img alt="" src="http://rors.org/images/rails.png" /></p>', result
  end

  def test_should_apply_simple_format_image_and_link_filter
    format = AutoHtml::Format.new(SimpleFormat, Image.new(alt: nil), Link)
    result = format.call "Check the logo: http://rors.org/images/rails.png. Visit: http://rubyonrails.org"
    assert_equal '<p>Check the logo: <img alt="" src="http://rors.org/images/rails.png" />. Visit: <a href="http://rubyonrails.org" >http://rubyonrails.org</a></p>', result
  end

  # def test_should_return_blank_if_input_is_blank
  #   format = AutoHtml::Format.new([SimpleFormat, Image.new(alt: nil), Link])
  #   result = format.call ""
  #   assert_equal "", result
  # end
  #
  # def test_should_not_apply_simple_format_if_input_is_nil
  #   format = AutoHtml::Format.new([SimpleFormat, Image.new(alt: nil), Link])
  #   result = format.call nil
  #   assert_equal "", result
  # end

end
