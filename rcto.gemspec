Gem::Specification.new do |s|
  s.name        = 'rcto'
  s.version     = '0.0.1'
  s.date        = '2018-11-12'
  s.summary     = "Hola!"
  s.description = "A simple hello world gem"
  s.authors     = ["Kevin Klein"]
  s.email       = 'kevin.k1252@gmail.com'
  s.files       = ["lib/rcto.rb"]
  s.homepage    =
    'http://rubygems.org/gems/rcto'
  s.license       = 'MIT'

  s.add_development_dependency 'minitest', '~> 5.8', '>= 5.8.4'
  s.add_dependency 'activerecord', '~> 5.2', '>= 5.2.1'
end
