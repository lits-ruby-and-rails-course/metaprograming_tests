class AAA
  def aaa
    puts 'aAa'
  end
end

a = AAA.new


a.aaa
a.send(:aaa)
a.instance_eval {aaa}
