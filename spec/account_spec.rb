require 'minitest/autorun'
require 'getit'
require 'getit/account'
require 'getit/configuration'

describe "The Account" do

# Runs codes before each expectation
  before do
    @acct = Getit::Configuration.load_account
  end

  # Runs code after each expectation
  after do
  end

  it "must initialize with a name" do
    @acct.account_name.must_be_instance_of String
  end

 

end
