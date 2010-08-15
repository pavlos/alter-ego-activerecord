# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{alter-ego-activerecord}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Paul Hieromnimon"]
  s.date = %q{2010-08-14}
  s.description = %q{Adapter to allow ActiveRecord to persist and restore state of objects using the AlterEgo state machine}
  s.email = %q{paul.hieromnimon@gmail.com}
  s.extra_rdoc_files = ["README.rdoc", "lib/alter_ego/active_record_adapter.rb"]
  s.files = ["Manifest", "README.rdoc", "Rakefile", "alter-ego-activerecord.gemspec", "init.rb", "lib/alter_ego/active_record_adapter.rb", "test/adapter_test.rb", "test/create_traffic_signals.rb", "test/helper.rb", "test/testdb.sqlite", "test/traffic_signal.rb"]
  s.homepage = %q{http://github.com/pavlos/alter-ego-activerecord}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Alter-ego-activerecord", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{alter-ego-activerecord}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Adapter to allow ActiveRecord to persist and restore state of objects using the AlterEgo state machine}
  s.test_files = ["test/adapter_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 2.3.5"])
      s.add_runtime_dependency(%q<alter-ego>, [">= 1.0.1"])
    else
      s.add_dependency(%q<activerecord>, [">= 2.3.5"])
      s.add_dependency(%q<alter-ego>, [">= 1.0.1"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 2.3.5"])
    s.add_dependency(%q<alter-ego>, [">= 1.0.1"])
  end
end
