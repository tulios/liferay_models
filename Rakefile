require 'rubygems'
gem 'hoe', '>= 2.1.0'
require 'hoe'

Hoe.plugin :newgem
Hoe.plugins.delete :rubyforge

# Hoe.plugin :website
# Hoe.plugin :cucumberfeatures

# Generate all the Rake tasks
# Run 'rake -T' to see list of generated tasks (from gem root directory)
$hoe = Hoe.spec 'liferay_models' do
  self.developer 'Tulio Ornelas dos Santos', 'ornelas.tulio@gmail.com'
  self.developer 'Renan Mendes Carvalho', 'aitherios@gmail.com'
  self.developer 'Karina Macedo Varela', 'kmacedovarela@gmail.com'
  self.developer 'Pedro Augusto Dias de Vasconcelo', 'capaca@gmail.com'
  
  self.readme_file = "README.rdoc"
  self.history_file = "CHANGELOG.rdoc"
  
  self.description = "LiferayModels description"
  
  self.url = "http://github.com/tulios/liferay_models"
  
  self.extra_deps << ["hoe", ">= 2.5.0"]
  self.extra_deps << ["gemcutter", ">= 0.3.0"]
  self.extra_deps << ["rubyforge", ">= 2.0.3"]
  self.extra_deps << ["activerecord", ">= 2.3.5"]
  self.extra_deps << ["activesupport", ">= 2.3.5"]
  self.extra_deps << ["stringex", ">= 1.1.0"]
  self.extra_deps << ["uuidtools", ">= 2.2.0"]      
end

require 'newgem/tasks'
Dir['tasks/**/*.rake'].each { |t| load t }

task :cultivate do
  system "touch Manifest.txt; rake check_manifest | grep -v \"(in \" | patch"
  system "rake debug_gem | grep -v \"(in \" > `basename \\`pwd\\``.gemspec"
end

# TODO - want other tests/tasks run by default? Add them to the list
# remove_task :default
# task :default => [:spec, :features]
