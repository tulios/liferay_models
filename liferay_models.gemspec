# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{liferay_models}
  s.version = "0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tulio Ornelas dos Santos", "Renan Mendes Carvalho", "Karina Macedo Varela", "Pedro Augusto Dias de Vasconcelo"]
  s.date = %q{2010-05-19}
  s.description = %q{LiferayModels description}
  s.email = ["ornelas.tulio@gmail.com", "aitherios@gmail.com", "kmacedovarela@gmail.com", "capaca@gmail.com"]
  s.extra_rdoc_files = ["Manifest.txt"]
  s.files = ["CHANGELOG.rdoc", "Manifest.txt", "README.rdoc", "Rakefile", "all_tests.rb", "helper/database_connector.rb", "helper/scripts.rb", "init.rb", "lib/liferay_models.rb", "lib/liferay_models/liferay.rb", "lib/liferay_models/models/classname.rb", "lib/liferay_models/models/company.rb", "lib/liferay_models/models/contact.rb", "lib/liferay_models/models/counter.rb", "lib/liferay_models/models/group.rb", "lib/liferay_models/models/role.rb", "lib/liferay_models/models/tag_asset.rb", "lib/liferay_models/models/tag_entry.rb", "lib/liferay_models/models/tag_vocabulary.rb", "lib/liferay_models/models/user.rb", "liferay_models.gemspec", "script/console", "script/destroy", "script/generate", "spec/config/database.yml", "spec/db/schema_liferay.sql", "spec/models/classname_spec.rb", "spec/models/company_spec.rb", "spec/models/contact_spec.rb", "spec/models/counter_spec.rb", "spec/models/group_spec.rb", "spec/models/role_spec.rb", "spec/models/tag_asset_spec.rb", "spec/models/tag_entry_spec.rb", "spec/models/tag_vocabulary_spec.rb", "spec/models/user_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "tasks/db.rake", "tasks/rspec.rake"]
  s.homepage = %q{http://github.com/tulios/liferay_models}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{liferay_models}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{FIX (describe your package)}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hoe>, [">= 2.5.0"])
      s.add_runtime_dependency(%q<gemcutter>, [">= 0.3.0"])
      s.add_runtime_dependency(%q<rubyforge>, [">= 2.0.3"])
      s.add_runtime_dependency(%q<activerecord>, [">= 2.3.5"])
      s.add_runtime_dependency(%q<activesupport>, [">= 2.3.5"])
      s.add_runtime_dependency(%q<stringex>, [">= 1.1.0"])
      s.add_runtime_dependency(%q<uuidtools>, [">= 2.2.0"])
      s.add_development_dependency(%q<hoe>, [">= 2.6.0"])
    else
      s.add_dependency(%q<hoe>, [">= 2.5.0"])
      s.add_dependency(%q<gemcutter>, [">= 0.3.0"])
      s.add_dependency(%q<rubyforge>, [">= 2.0.3"])
      s.add_dependency(%q<activerecord>, [">= 2.3.5"])
      s.add_dependency(%q<activesupport>, [">= 2.3.5"])
      s.add_dependency(%q<stringex>, [">= 1.1.0"])
      s.add_dependency(%q<uuidtools>, [">= 2.2.0"])
      s.add_dependency(%q<hoe>, [">= 2.6.0"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 2.5.0"])
    s.add_dependency(%q<gemcutter>, [">= 0.3.0"])
    s.add_dependency(%q<rubyforge>, [">= 2.0.3"])
    s.add_dependency(%q<activerecord>, [">= 2.3.5"])
    s.add_dependency(%q<activesupport>, [">= 2.3.5"])
    s.add_dependency(%q<stringex>, [">= 1.1.0"])
    s.add_dependency(%q<uuidtools>, [">= 2.2.0"])
    s.add_dependency(%q<hoe>, [">= 2.6.0"])
  end
end
