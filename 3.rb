class WTF
  define_method("method_missing") {|x, *a, &b| puts "#{x}#{b.call if b}" }
end

a = WTF.new { "HELLO" }