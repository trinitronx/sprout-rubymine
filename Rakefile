require 'rake'
require 'rubocop/rake_task'

task default: %w(foodcritic rubocop)

desc 'Run foodcritic'
task :foodcritic do
  sh 'foodcritic . -f any'
end

RuboCop::RakeTask.new
