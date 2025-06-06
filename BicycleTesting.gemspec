# frozen_string_literal: true

require_relative "lib/BicycleTesting/version"

Gem::Specification.new do |spec|
    spec.name          = "BicycleTesting"
    spec.version       = BicycleTesting::VERSION
    spec.authors       = ["Oblivious-Oblivious"]
    spec.email         = ["me262thanos@gmail.com"]

    spec.summary       = "A program that creates bicycles."
    spec.description   = """We have different classes of bicycles
communicating using different message delegation methods such as inheritance and composition."

    spec.homepage      = "https://github.com/Oblivious-Oblivious/BicycleTesting"
    spec.required_ruby_version = Gem::Requirement.new(">= 2.5.0")

    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/Oblivious-Oblivious/BicycleTesting"
    spec.metadata["changelog_uri"] = "https://github.com/Oblivious-Oblivious/BicycleTesting/CHANGELOG.md"

    # Specify which files should be added to the gem when it is released.
    # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
    spec.files = Dir.chdir(File.expand_path(__dir__)) do
        `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
    end
    spec.bindir        = "exe"
    spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
    spec.require_paths = ["lib"]
    spec.extensions    = ["ext/BicycleTesting/extconf.rb"]

    # Uncomment to register a new dependency of your gem
    # spec.add_dependency "example-gem", "~> 1.0"

    # For more information and examples about making a new gem, checkout our
    # guide at: https://bundler.io/guides/creating_gem.html
end
