require 'minitest/autorun'
require 'getit/portfolio'

describe "The Configuration" do

# Runs codes before each expectation
  before do
    @config = Getit::Configuration.load_config
  end

  
  it "must not be nil" do
    @config.wont_be_nil
  end
  
  it "must contain a portfolio" do
    @config.portfolio.wont_be_nil
  end
  

  
end
