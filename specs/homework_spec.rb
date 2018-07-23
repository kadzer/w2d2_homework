require("minitest/autorun")
require("minitest/rg")
require_relative("../homework")

class TestHomework < MiniTest::Test

  def setup()
    @student = Student.new("Kaspars", "G7")
  end

  # Testing part A

  def test_name_getter()
    assert_equal("Kaspars", @student.get_name())
  end

  def test_cohort_getter()
    assert_equal("G7", @student.get_cohort())
  end

end
