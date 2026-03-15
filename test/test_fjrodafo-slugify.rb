require "minitest/autorun"
require "fjrodafo/slugify"

class FJrodafoSlugifyTest < Minitest::Test
  def test_empty
    assert_equal "",
      FJrodafo::Slugify.to_slug("")
  end

  def test_hello_world
    assert_equal "hello-world",
      FJrodafo::Slugify.to_slug("Hello, World!")
  end

  def test_hola_mundo
    assert_equal "hola-mundo-1234-slugify-ruby",
      FJrodafo::Slugify.to_slug("  ¡¡¡HólA---   MüñdØ  1234!!! ### Slugify--Ruby 💎   ")
  end
end
