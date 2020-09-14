class Owner
  attr_reader :name, :species
  @@all = []

  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
  end

  def say_species
    p "I am a #{@species}."
  end

  def buy_cat(name)
    cat = Cat.new(name,self)
  end

  def buy_dog(name)
    dog = Dog.new(name,self)
  end

  def self.count
    @@all.length
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    Cat.all.find_all{|x| x.owner == self}
  end

  def dogs
    Dog.all.find_all{|x| x.owner == self}
  end
end
