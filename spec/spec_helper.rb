$:.unshift File.realpath File.join(File.dirname(__FILE__), '..', 'lib')

require 'git-command'

require 'rspec/pride'

require 'pry'
require 'awesome_print'
