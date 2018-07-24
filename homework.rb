class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def get_name()
    return @name
  end

  def get_cohort()
    return @cohort
  end

  def set_name(name)
    @name = name
  end

  def set_cohort(cohort)
    @cohort = cohort
  end

  def say(string)
    return string
  end

  def say_fav(lang)
    return "I love #{lang}!"
  end
end

class Team
  attr_reader :name, :players
  attr_accessor :coach, :points

  def initialize(name, players, coach, points: 0 )
    @name = name
    @players = players
    @coach = coach
    @points = points
  end

  def get_team_name()
    return @name
  end

  def get_team_players()
    return @players
  end

  def get_team_coach()
    return @coach
  end

  def add_new_player(player)
    @players.push(player)
  end

  def find_player_name(name)
    return @players.include?(name)
  end

  def win_or_lose(result)
    if result == "win"
      @points += 1
    end
  end
end

class Library
# blank {title:, rental_details:{student_name:, date:}})
  def initialize(book)
    #book = {title: "", rental_details:{student_name:"", date:""}}
    @book = book
    @book_title = book[:title]
    @student_name = book[:rental_details][:student_name]
    @rental_date = book[:rental_details][:date]
  end

  def get_books()
    return @book
  end
end
