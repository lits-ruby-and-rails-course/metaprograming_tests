class Dog
  def speak
      puts "woof"
  end

  private

  def dream
      puts "chasing a rabbit"
  end
end

dog = Dog.new

dog.instance_eval { dream }
dog.send(:dream)
dog.class_eval { dream }