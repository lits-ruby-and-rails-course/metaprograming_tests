class A
  def method_missing(m, *args)
    puts "A, #{m}, #{args}"
  end
end

class B < A
  def method_missing(m, *args)
    puts "#{self.class}, #{m}, #{args}"
  end
end

class C < B
end

c = C.new
c.hello