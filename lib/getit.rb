require "getit/version"
require 'yaml'
require 'active_model'

module Getit

  PRGM_DIR      = File.expand_path("../..", __FILE__)
  DOWNLOADS_DIR = File.join PRGM_DIR , "downloads"

  PORTFOLIO_CONF   = File.join PRGM_DIR , "conf/getit.conf"

  Dir[File.dirname(__FILE__) + '/geit/*.rb'].each {|file| require file }


end
