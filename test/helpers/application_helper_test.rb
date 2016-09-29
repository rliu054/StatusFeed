require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         "Rui Liu's first Rails app"
    assert_equal full_title("Help"), "Help | Rui Liu's first Rails app"
  end
end
