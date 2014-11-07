require_relative 'lez'
require_relative '../../test_lez.rb'

include TestLez

TestLez.run([
  proc { assert_eq(Lez.fizzbuzz, File.read("#{File.dirname(__FILE__)}/expected_output.txt")) }
])