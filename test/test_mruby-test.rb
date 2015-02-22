assert('it can use puts') do
  test = MRubyTest.new
  assert test.say("hello, mruby!")
end
