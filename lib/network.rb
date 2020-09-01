class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    network_main_characters = []
    @shows.each do |show|
      if show.main_characters != []
        network_main_characters << show.main_characters.pop
      end
    end.flatten
    network_main_characters
  end

  def actors_by_show
    actors_in_show = {}
    @shows.each do |show|
      actors_in_show[show] = show.actors
    end
    actors_in_show
  end

end
