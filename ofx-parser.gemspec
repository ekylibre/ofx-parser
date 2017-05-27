# encoding: utf-8

$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'ofx-parser/version'

Gem::Specification.new do |spec|
  spec.name = 'ekylibre-ofx-parser'
  spec.version = OfxParser::VERSION

  spec.authors     = ['Andrew A. Smith', 'Louis Coquio']
  spec.summary     = 'ofx-parser is a ruby library for parsing OFX 1.x data.'
  spec.description = "== DESCRIPTION:\n\nofx-parser is a ruby library to parse a realistic subset of the lengthy OFX 1.x specification.\n\n== FEATURES/PROBLEMS:\n\n* Reads OFX responses - i.e. those downloaded from financial institutions and\n  puts it into a usable object graph.\n* Supports the 3 main message sets: banking, credit card and investment\n  accounts, as well as the required 'sign on' set.\n* Knows about SIC codes - if your institution provides them.\n  See http://www.eeoc.gov/stats/jobpat/siccodes.html\n* Monetary amounts can be retrieved either as a raw string, or in pennies.\n* Supports OFX timestamps."
  spec.email        = 'andy@tinnedfruit.org'
  spec.homepage     = 'https://github.com/ekylibre/ofx-parser'

  spec.files         = `git ls-files LICENSE README.rdoc lib vendor`.split("\n")
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency('hpricot', ['>= 0.6'])
  spec.add_development_dependency('rdoc', ['~> 3.10'])
  spec.add_development_dependency('hoe', ['~> 3.3'])
end
