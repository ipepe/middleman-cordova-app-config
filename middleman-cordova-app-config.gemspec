
$LOAD_PATH.push File.expand_path('lib', __dir__)

Gem::Specification.new do |s|
  s.name        = 'middleman-cordova-app-config'
  s.version     = "1.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Patryk Ptasiński"]
  s.email       = ["patryk@ipepe.pl"]
  s.homepage    = "http://ipepe.pl/"
  s.summary     = %q{Extension that helps access cordova application information}
  s.description = %q{Extension that helps access cordova application information}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  # The version of middleman-core your extension depends on
  s.add_runtime_dependency('middleman-core', ['>= 4.2.1'])
  s.add_runtime_dependency('nokogiri')

  # Additional dependencies
  # s.add_runtime_dependency("gem-name", "gem-version")
end
