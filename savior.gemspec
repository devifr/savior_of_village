
lib = File.expand_path("lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
# require "savior/version"

Gem::Specification.new do |spec|
  spec.name          = "savior"
  spec.version       = 1
  spec.authors       = ["Devi Firdaus Fauzi"]
  spec.email         = ["dfedogawa3@gmail.com"]

  spec.summary       = "Gem for saving a village"
  spec.description   = "Gem for saving a village"
  spec.homepage      = "https://github.com/devifr/savior_of_village"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://github.com/devifr/savior_of_village"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/devifr/savior_of_village"
    spec.metadata["changelog_uri"] = "https://github.com/devifr/savior_of_village"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
