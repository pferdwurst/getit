module Getit
  class Account
   include ActiveModel::Model

    attr_accessor :account_name, :account_id, :institution_id

    def initialize
      
    end
    validates_presence_of :account_id
  end
end