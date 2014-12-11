require 'getit/base'

module Getit
  class Customer 
   include Base
      
    def initialize
      puts "heellooo"
      
      Base.test2
    end
  end
end 