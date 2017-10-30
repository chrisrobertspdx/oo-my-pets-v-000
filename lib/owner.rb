class Owner
  # code goes here
 attr_reader :species
 attr_accessor :name :pets

  @@all = []

  def initialize()
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    puts "I am a #{species}"
  end

  def buy_fish
    new_fish = Fish.new(name)
    pets[:fishes] << new_fish
  end

  def buy_cat
    new_cat = Cat.new(name)
    pets[:cats] << new_cat
  end

  def buy_dog
    new_dog = Dog.new(name)
    pets[:dogs] << new_dog
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

end
