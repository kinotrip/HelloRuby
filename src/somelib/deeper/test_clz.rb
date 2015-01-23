puts ''
puts 'loaded:'+__FILE__

require '../test_base'

class TestClass < TestBase
  def say
    super
    puts "I am TestClass"
  end
end