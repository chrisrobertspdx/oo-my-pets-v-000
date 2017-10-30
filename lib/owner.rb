class Owner
  # code goes here
  @@all = []

  def self.all
    @@all
  end

  def save
    @@ << self
  end 
  
end