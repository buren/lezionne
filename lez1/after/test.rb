require_relative 'lez'
require_relative '../../test_lez.rb'

include TestLez

TestLez.run([
  proc { assert_eq(Lez.humanize('Main'), 'Main') },
  proc { assert_eq(Lez.humanize('main'), 'main') },
  proc { assert_eq(Lez.humanize('MainHeader'), 'Main Header') },
  proc { assert_eq(Lez.humanize('Main Header'), 'Main Header') },
  proc { assert_eq(Lez.humanize('main_header_index'), 'Main Header Index') },
  proc { assert_eq(Lez.humanize(''), '') }
])