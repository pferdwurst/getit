require 'minitest/autorun'
require 'getit/portfolio'

describe "The Configuration" do

# Runs codes before each expectation
  before do
    @config = Getit::Configuration.load_config
  end

  
  it "must exist" do
    @config.wont_be_nil
  end

  
end
