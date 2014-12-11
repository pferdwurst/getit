module Getit
  module Base
    def Base.test()
      puts "This is only a test"
    end
    
    class << self
      def test2
        puts "This is test2"
      end
    end
    
  end
end