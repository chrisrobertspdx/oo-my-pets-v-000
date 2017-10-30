class Owner
  # code goes here
 attr_reader :species

  @@all = []

  def initialize()
    @species = human
  end
  
  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

end
