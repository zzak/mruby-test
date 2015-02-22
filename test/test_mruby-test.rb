assert('it can use puts') do
  test = MRubyTest.new
  test.say("hello, mruby!")

  true # we reached here, ok
end
