require 'rubygems'
gem 'hoe', '>= 2.1.0'
require 'hoe'
require 'fileutils'
require './lib/liferay_models'

Hoe.plugin :newgem
# Hoe.plugin :website
# Hoe.plugin :cucumberfeatures

# Generate all the Rake tasks
# Run 'rake -T' to see list of generated tasks (from gem root directory)
$hoe = Hoe.spec 'liferay_models' do
  self.developer 'Túlio Ornelas dos Santos', 'ornelas.tulio@gmail.com'
  self.rubyforge_name       = self.name # TODO this is default value
  self.extra_deps           = [
    ['activerecord','>= 2.3.3'],
    ['activesupport','>= 2.3.3'],
    ['uuidtools', '>= 1.0.3'],
    ['stringex', '>= 1.1.0']
  ]

end

require 'newgem/tasks'
Dir['tasks/**/*.rake'].each { |t| load t }

# TODO - want other tests/tasks run by default? Add them to the list
# remove_task :default
# task :default => [:spec, :features]
