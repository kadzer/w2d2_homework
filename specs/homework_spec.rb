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

  def test_set_name()
    @student.set_name("Robert")
    assert_equal("Robert", @student.get_name())
  end

  def test_set_cohort()
    @student.set_cohort("G6")
    assert_equal("G6", @student.get_cohort())
  end

  def test_make_student_talk()
    result = @student.say("I can talk!")
    assert_equal("I can talk!", result)
  end
end
