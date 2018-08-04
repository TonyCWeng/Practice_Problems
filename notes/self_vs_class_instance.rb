class Peon
  attr_reader :age
  def initialize(name, age)
    @name = name
    @age = age
  end

  def grow_older1(years)
    self.age += years
    puts "#{@name} is now #{self.age} years old."
  end

  def grow_older2(years)
    @age += years
    puts "#{@name} is now #{self.age} years old."
  end

  def age=(value)
    puts "hello, you've accessed self.age"
    @age = value
  end

end

a = Peon.new("Fred", 10)
b = Peon.new("Ted", 10)
a.grow_older1(10)
b.grow_older2(10)

# When we call self.age, we are referring to the method called age on
# a peon instance. When we use @age, we are directly referring to the instance
# variable itself. As such, when we used grow_older1 we see the puts message
# from the age setter.
