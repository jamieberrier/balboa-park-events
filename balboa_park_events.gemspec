
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "balboa_park_events/version"

Gem::Specification.new do |spec|
  spec.name          = "balboa_park_events"
  spec.version       = BalboaParkEvents::VERSION
  spec.authors       = ["'jamieberrier'"]
  spec.email         = ["'berrier.jamie@gmail.com'"]

  spec.summary       = "Today's Events At Balboa Park"
  spec.description   = "A Ruby Gem providing a CLI to view today's highlighted events at San Diego's Balboa Park, details about a selected highlighted event, or more park events happening today as per the Balboa Park website."
  #spec.homepage      = 'https://github.com/jamieberrier/balboa-park-events'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    #spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = 'https://github.com/jamieberrier/balboa-park-events'
    #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "nokogiri", ">= 0"
  spec.add_development_dependency "pry", ">= 0"
end
