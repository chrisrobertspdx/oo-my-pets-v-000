class Owner
  # code goes here
  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def reset_all
    @@all.clear
  end

end
