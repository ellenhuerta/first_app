# Encoding: UTF-8

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.author            = 'Enddy Nayn'
  s.name              = 'refinerycms-writers'
  s.version           = '1.0'
  s.description       = 'Ruby on Rails Writers extension for Refinery CMS'
  s.date              = '2014-05-05'
  s.summary           = 'Writers extension for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir["{app,config,db,lib}/**/*"] + ["readme.md"]

  # Runtime dependencies
  s.add_dependency             'refinerycms-core',    '~> 2.1.2'

  # Development dependencies (usually used for testing)
  s.add_development_dependency 'refinerycms-testing', '~> 2.1.2'
end
