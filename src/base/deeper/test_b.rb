puts ''
puts 'testb:'+__FILE__

require '../test_base'

class TestB < TestBase
  def say
    super
    puts "yeahyeah456"
  end
end