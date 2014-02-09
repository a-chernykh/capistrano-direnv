Gem::Specification.new do |s|
  s.name        = 'capistrano-direnv'
  s.version     = '0.0.1'
  s.date        = '2014-02-08'
  s.summary     = "Adds direnv support to capistrano"
  s.description = "Every capistrano command will be executed with direnv environment"
  s.authors     = ["Andrey Chernih"]
  s.email       = 'andrey.chernih@gmail.com'
  s.files       = `git ls-files`.split($/)
  s.homepage    = 'http://github.com/andreychernih/capistrano-direnv'
  s.license     = 'Apache 2.0'

  s.add_dependency 'capistrano', '~> 3.0'
  s.add_dependency 'sshkit',     '~> 1.2'
end
