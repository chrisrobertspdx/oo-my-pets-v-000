class Owner
  # code goes here
 attr_reader :species
 attr_accessor :name, :pets

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
    self.pets[:fishes] << new_fish
  end

  def buy_cat
    new_cat = Cat.new(name)
    self.pets[:cats] << new_cat
  end

  def buy_dog
    new_dog = Dog.new(name)
    self.pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs].each{|e|
      e.mood = "happy"
    }

  def play_with_cats
    self.pets[:cats].each{|e|
      e.mood = "happy"
    }
  end

  def feed_fish
    self.pets[:fish].each{|e|
      e.mood = "happy"
    }
  end

  def sell_pets
    self.pets.each{|type,pets|
      pets.each{|pet| pet.mood = "nervous"}
      type.clear
    }
  end

I have 2 fish, 3 dog(s), and 1 cat(s).

  def list_pets
    puts "I have #{self.pets[:fish].size} fish, #{self.pets[:dogs].size} dog(s) and #{self.pets[:cats].size} cat(s)."
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
