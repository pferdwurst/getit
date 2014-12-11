
module Getit
  class Configuration
    
    attr_accessor :client, :customer, :portfolio, :last_modified
     
   
    class << self
      def load_config
        @config =  YAML.load_file(PORTFOLIO_CONF) || self.default
      end

      def config( key )
        if @config.nil?
          init
        end
        @config[key]
      end

      def load_account
           YAML.load_file("conf/account.conf") || self.default
          
      end
      
      def load_portfolio
        YAML.load_file("conf/portfolio.conf") || self.default
      end

      def default
        default_conf = { "key" => "value"}
      end
    end
  end
end