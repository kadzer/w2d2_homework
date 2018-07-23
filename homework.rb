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
  attr_accessor :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
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
end
