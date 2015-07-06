class WTF
  def initialize; end
  define_method("method_missing") {|x, *a| puts "#{x}#{yield if block_given?}" }
end

a = WTF.new
a.aaa {"BBB"}