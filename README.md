# Metaprograming test

1. What are the proper ways to call method aaa from class AAA(select multiple)?
    ```ruby
    class AAA
      def aaa
        puts 'aAa'
      end
    end
    
    a = AAA.new
    ```
  1. `AAA.aaa`
  2. `a.aaa`
  3. `a.send(:aaa)`
  4. `a.instance_eval {aaa}`
2. What output you will get after running this code:
    ```ruby
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
    ```
  1. A, hello, []
  2. B, hello, []
  3. C, hello, []
3. What output you will get after running this code:
    ```ruby
    class WTF
      define_method("method_missing") {|x, *a, &b| puts "#{x}#{b.call if b}" }
    end
    
    a = WTF.new { "HELLO" }
    ```
  1. initializeHELLO
  2. no output at all
  3. initialize
4. What output you will get after running this code:
    ```ruby
    class WTF
      def initialize; end
      define_method("method_missing") {|x, *a| puts "#{x}#{yield if block_given?}" }
    end
    
    a = WTF.new
    a.aaa {"BBB"}
    ```
  1. aaa
  2. aaaBBB
  3. BBB
5. What output you will get after running this code:
    ```ruby
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
    ```
  1. HELLO!!!!
  2. Not now!
  3. hello
    HELLO!!!!
6. Which of the following are the Scope Gates (thing that open/close new scope, select multiple)
  1. Class definitions
  2. Module definitions
  3. Methods
  4. Block
7. Can one call private method in Ruby (select multiple)
    ```ruby
    class Dog
      def speak
          puts "woof"
      end
    
      private
    
      def dream
          puts "chasing a rabbit"
      end
    end
    ```
  1. No, it’s not possible
  2. Yes, using instance_eval
  3. Yes, using class_eval
  4. Yes, using eval
  5. Yes, using send
8. What output you will get after running this code:
    ```ruby
    def some_method
      x = "World"
      yield("Hello")
    end
    
    x = "Ruby"
    some_method{|y| puts "#{y} #{x}!"}
    ```
  1. Hello World!
  2. Hello !
  3. Hello Ruby!
9. Which core object includes the Kernel module?
  1. `Object`
  2. `BasicObject`
  3. `KernelObject`
  4. `Kernel` is class
10. Is `#attr_reader` an example of metaprogramming?
  1. No, it’s control structure
  2. Yes, it defines method
