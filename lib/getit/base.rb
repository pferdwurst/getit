module Getit
  module Base
  
      
      def Base.load_institutions(client, force = false)
     # load institution data
      output_file = File.join(File.join(File.expand_path("../..", __FILE__), "downloads/raw"), "institutions")
      
      if (!File.exist?(output_file)  or force)
        # Fetch the list from the API and persist
        @@logger.info("Fetching institution list from the API and writing to #{output_file}")
        begin
          @@institutions = client.institutions
          File.open(output_file, "wb") { |f| Marshal.dump(  @institutions, f) }
        rescue StandardError => e
          @@logger.error( "Failed to fetch the institutions from the api: #{e}" )
        end
      else
        @@logger.info("Loading the institutions from file" )
        
         response = File.open(output_file, "rb") { |f| Marshal.load(f) }
         if response[:status_code] == "200"
            @@institutions = response[:result][:institutions][:institution]
         else
           @@logger.error("problem loading the institutions file #{response[:status_code]}" )
         end
         
      end
   end

    
    class << self
      def test2
        puts "This is test2"
      end
    end
    
  end
end