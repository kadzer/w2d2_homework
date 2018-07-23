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

  def set_team_coach(new_coach)
    @coach = new_coach
  end
end
