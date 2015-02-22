TEST_ROOT=ENV["TEST_ROOT"] || Dir.pwd
MRUBY_ROOT=ENV["MRUBY_ROOT"] || "#{TEST_ROOT}/mruby"
MRUBY_CONFIG=File.expand_path(ENV["MRUBY_CONFIG"] || "build_config.rb")
MRUBY_VERSION=ENV["MRUBY_VERSION"] || "1.1.0"

file :mruby do # :nodoc:
  sh "wget https://github.com/mruby/mruby/archive/#{MRUBY_VERSION}.tar.gz"
  sh "tar -xvzf #{MRUBY_VERSION}.tar.gz && rm #{MRUBY_VERSION}.tar.gz"
  sh "mv mruby-#{MRUBY_VERSION} mruby"
end

desc "compile binary"
task :compile => :mruby do
  sh "cd #{MRUBY_ROOT} && MRUBY_CONFIG=#{MRUBY_CONFIG} rake all"
  sh "cp -p #{MRUBY_ROOT}/bin/mruby #{TEST_ROOT}/bin/test"
end

desc "test"
task :test => :mruby do
  sh "cd #{MRUBY_ROOT} && MRUBY_CONFIG=#{MRUBY_CONFIG} rake all test"
end

task :default => :test
