require("minitest/autorun")
require("minitest/rg")
require_relative("../homework")

class TestHomework < MiniTest::Test

  def setup()
    @student = Student.new("Kaspars", "G7")
  end

end
