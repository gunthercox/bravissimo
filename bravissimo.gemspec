# coding: utf-8

Gem::Specification.new do |spec|
  spec.name        = 'bravissimo'
  spec.summary     = 'A Jekyll theme'
  spec.description = 'A Jekyll theme (using Bootstrap)'
  spec.license     = 'MIT'

  spec.authors     = ['Gunther Cox']
  spec.email       = 'gunthercx@gmail.com'
  spec.homepage    = 'https://github.com/gunthercox/bravissimo'

  spec.version     = '0.0.7'
  spec.date        = '2017-11-16'

  spec.files       = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|fonts|css|js|_(includes|layouts|sass)/|((\.(html|txt|md)|$)))}i)
  end

  spec.bindir      = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }

  spec.metadata['plugin_type'] = 'theme'

  spec.add_runtime_dependency 'jekyll', '~> 3.5'
  spec.add_development_dependency 'bundler', '~> 1.12'
end
