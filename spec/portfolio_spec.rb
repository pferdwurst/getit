require 'minitest/autorun'
require 'getit/portfolio'

describe "The Portfolio" do

# Runs codes before each expectation
  before do
    @portfolio = Getit::Configuration.load_portfolio
  end

  # Runs code after each expectation
  after do
  end

  it "must initialize with a name" do
    @portfolio.portfolio_name.must_be_instance_of String
  end

 

  it "must list accounts" do
    # shouldn't error out
    @portfolio.accounts
  end

end
