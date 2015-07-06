class Object
  def hello
    puts 'hello'
  end
end

class Greeter
  def hello
    super
    puts 'HELLO!!!!'
  end
end

class Greeter
  def hello
    puts 'Not now!'
  end
end

g = Greeter.new
g.hello