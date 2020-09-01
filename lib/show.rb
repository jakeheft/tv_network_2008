class Show
  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    @characters.sum do |character|
      character.salary
    end
  end

  def highest_paid_actor
    highest_paid = @characters.max_by do |character|
      character.salary
    end
    highest_paid.actor
  end

  def actors
    @characters.map do |character|
      character.actor
    end
  end

  def main_characters
    show_mains = @characters.select do |character|
      character.salary > 500_000 && character.name == character.name.upcase
    end
  end
end
