Gem::Specification.new do |s|

  s.name        = "rack_no_autocomplete"
  s.version     = '0.0.2'
  s.authors     = ['Eric Anderson']
  s.email       = ['eric@pixelwareinc.com']

  s.add_dependency 'rack'
  s.add_dependency 'rack_replace'
  s.add_development_dependency 'rake'

  s.files = Dir['lib/**/*.rb']
  s.extra_rdoc_files << 'README.rdoc'
  s.rdoc_options << '--main' << 'README.rdoc'

  s.summary     = 'Adds autocomplete="off" to all input fields and forms'
  s.description = <<DESCRIPTION
Adds autocomplete="off" to all input fields and forms. The disables the
automcomplete feature for a site when you feel it is causing more
problems than helping.
DESCRIPTION

end
