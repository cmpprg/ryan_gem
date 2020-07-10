require "ryan2020/version"

module Ryan2020
  class Error < StandardError; end
  
    class Speak
      def say_hi(name)
        puts "Hello #{name}!"
      end
    end
end
