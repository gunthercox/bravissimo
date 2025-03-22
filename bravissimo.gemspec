# coding: utf-8

Gem::Specification.new do |spec|
  spec.name        = 'bravissimo'
  spec.summary     = 'A Jekyll theme'
  spec.description = 'A Jekyll theme (using Bootstrap)'
  spec.license     = 'MIT'

  spec.authors     = ['Gunther Cox']
  spec.email       = 'gunthercx@gmail.com'
  spec.homepage    = 'https://github.com/gunthercox/bravissimo'

  spec.version     = '0.2.0'
  spec.date        = '2025-03-22'

  spec.files       = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|fonts|css|js|_(includes|layouts|sass)/|((\.(html|txt|md)|$)))}i)
  end

  spec.bindir      = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }

  spec.metadata['plugin_type'] = 'theme'

  spec.required_ruby_version = '~> 3.3'

  spec.add_runtime_dependency 'jekyll', '~> 4.3'
  spec.add_runtime_dependency 'kramdown-parser-gfm', '~> 1.1'
  spec.add_development_dependency 'bundler', '~> 2.6'
  spec.add_development_dependency 'html-proofer', '~> 5.0'
end
