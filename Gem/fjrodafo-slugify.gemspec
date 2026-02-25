Gem::Specification.new do |spec|
  spec.name        = "fjrodafo-slugify"
  spec.version     = "1.0.2"
  spec.summary     = "Slugify!"
  spec.description = "A simple slugify gem!"

  spec.authors     = ["Francisco José Rodríguez Afonso"]
  spec.email       = "fjrodafo@gmail.com"

  spec.license     = "CC0-1.0"
  spec.files       = ["LICENSE", "README.md", "lib/fjrodafo/slugify.rb", "lib/fjrodafo/slugify/transliteration.rb"]
  spec.test_files  = ["test/test_fjrodafo-slugify.rb"]

  spec.required_ruby_version = ">= 3.1"

  spec.homepage    = "https://github.com/FJrodafo/Slugify"
  spec.metadata    = {
    "github_repo" => "https://github.com/FJrodafo/Slugify"
  }

  spec.executables << "fjrodafo-slugify"
end
