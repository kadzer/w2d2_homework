require("minitest/autorun")
require("minitest/rg")
require_relative("../homework")

class TestHomework < MiniTest::Test

  def setup()
    book = {
      title: "English for toddlers",
      rental_details: {
        student_name: "Master Yoda",
        date: "01/12/18"
      }
    }
    @student = Student.new("Kaspars", "G7")
    @team = Team.new("TMNT", ["Leo", "Mike", "Don", "Raph"], "Splinter")
    @library = Library.new({
      title: "English for toddlers",
      rental_details: {
        student_name: "Master Yoda",
        date: "01/12/18"
      }
      })
  end

  # Part A

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

  # Part B

  def test_get_team_name()
    assert_equal("TMNT", @team.name())
  end

  def test_get_team_players()
    assert_equal(["Leo", "Mike", "Don", "Raph"], @team.players())
  end

  def test_get_team_coach()
    assert_equal("Splinter", @team.coach())
  end

  def test_set_team_coach()
    @team.coach = "Zed"
    assert_equal("Zed", @team.coach())
  end

  def test_add_new_player()
    @team.add_new_player("Mongo")
    assert_equal(5, @team.players.count())
  end

  def test_find_player_name()
    result = @team.find_player_name("Don")
    assert_equal(true, result)
  end

  def test_win_or_lose()
    result = @team.win_or_lose("win")
    assert_equal(1, @team.points)
  end

  # extension

  def test_book_getter()
    assert_equal({
      title: "English for toddlers",
      rental_details: {
        student_name: "Master Yoda",
        date: "01/12/18"
      }
      }, @library.get_books())

    end

  end
