module TestLez
  def assert_eq(result, expected)
    expected == result or fail "** [TEST RESULT] Expected #{expected}, got #{result} ** \n\n"
  end

  def self.run(tests)
    success = 0
    fail    = []
    tests.each do |test|
      begin
        test.call
        print '.'
        success += 1
      rescue Exception => e
        print 'F'
        fail << "#{e.backtrace.join("\n")} \n #{e.message}" 
      end
    end
    puts
    fail.each { |f| puts f }
    puts unless fail.empty?
    puts "Success: #{success}, Fail: #{fail.length}, Total: #{tests.length}"
  end
end
