# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{liferay_models}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["T\303\272lio Ornelas dos Santos"]
  s.date = %q{2010-01-18}
  s.description = %q{FIX (describe your package)}
  s.email = ["ornelas.tulio@gmail.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.rdoc", "Rakefile", "helper/database_connector.rb", "helper/scripts.rb", "lib/liferay_models.rb", "lib/liferay_models/liferay.rb", "lib/liferay_models/models/classname.rb", "lib/liferay_models/models/company.rb", "lib/liferay_models/models/counter.rb", "lib/liferay_models/models/role.rb", "script/console", "script/destroy", "script/generate", "spec/config/database.yml", "spec/db/schema_liferay.sql", "spec/models/company_spec.rb", "spec/models/role_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "tasks/db.rake", "tasks/rspec.rake"]
  s.homepage = %q{http://github.com/#{github_username}/#{project_name}}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{liferay_models}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{FIX (describe your package)}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 2.3.3"])
      s.add_runtime_dependency(%q<activesupport>, [">= 2.3.3"])
      s.add_development_dependency(%q<rubyforge>, [">= 2.0.3"])
      s.add_development_dependency(%q<gemcutter>, [">= 0.3.0"])
      s.add_development_dependency(%q<hoe>, [">= 2.5.0"])
    else
      s.add_dependency(%q<activerecord>, [">= 2.3.3"])
      s.add_dependency(%q<activesupport>, [">= 2.3.3"])
      s.add_dependency(%q<rubyforge>, [">= 2.0.3"])
      s.add_dependency(%q<gemcutter>, [">= 0.3.0"])
      s.add_dependency(%q<hoe>, [">= 2.5.0"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 2.3.3"])
    s.add_dependency(%q<activesupport>, [">= 2.3.3"])
    s.add_dependency(%q<rubyforge>, [">= 2.0.3"])
    s.add_dependency(%q<gemcutter>, [">= 0.3.0"])
    s.add_dependency(%q<hoe>, [">= 2.5.0"])
  end
end
