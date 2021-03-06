require_relative 'lib/ryan2020/version'

Gem::Specification.new do |spec|
  spec.name          = "ryan2020"
  spec.version       = Ryan2020::VERSION
  spec.authors       = ["Ryan Camp"]
  spec.email         = ["campryan@comcast.net"]

  spec.summary       = %q{This is Ryan Camps first gem yay!!.}
  spec.description   = %q{yay!!.}
  spec.homepage      = "https://github.com/cmpprg/ryan_gem.git"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/cmpprg/ryan_gem.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
