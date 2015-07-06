def some_method
    x = "World"
    yield("Hello")
end

x = "Ruby"
some_method{|y| puts "#{y} #{x}!"}