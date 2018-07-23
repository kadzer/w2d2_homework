require("minitest/autorun")
require("minitest/rg")
require_relative("../homework")

class TestHomework < MiniTest::Test

  def setup()
    @student = Student.new("Kaspars", "G7")
    @team = Team.new("TMNT", ["Leo", "Mike", "Don", "Raph"], "Splinter")
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

  def test_make_student_say_fav_lang()
    result = @student.say_fav("Ruby")
    assert_equal("I love Ruby!", result)
  end

  # Testing part B

  def test_get_team_name()
    result = @team.get_team_name()
    assert_equal("TMNT", result)
  end

  def test_get_team_players()
    result = @team.get_team_players()
    assert_equal(["Leo", "Mike", "Don", "Raph"], result)
  end

  def test_get_team_coach()
    result = @team.get_team_coach()
    assert_equal("Splinter", result)
  end

  def test_set_team_coach()
    result = @team.set_team_coach("Mungo")
    assert_equal("Mungo", @team.get_team_coach())
  end
end
