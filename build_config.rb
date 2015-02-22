MRuby::Build.new do |conf|
  toolchain :gcc
  enable_debug

  conf.gembox 'default'

  conf.gem github: 'iij/mruby-io'

  conf.gem File.expand_path(File.dirname(__FILE__))
end
