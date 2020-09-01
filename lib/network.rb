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

end
