# Load the file that contains the Transliteration module which defines the character replacement map for special characters
require_relative "slugify/transliteration"

# Main module for the gem
module FJrodafo
  # Submodule that provides the "slugify" functionality
  module Slugify
    # Class method that converts any text into a URL-safe slug
    # @param text [String] The input text to convert
    # @return [String] The resulting slug
    def self.to_slug(text)
      # Return an empty string if the input is nil
      return "" if text.nil?

      # Convert the input to string (in case it is not a string) and chain transformations to produce a slug
      text
        .to_s                      # Convert the input to a string, in case it's nil, a number, or another type
        .downcase                  # Convert the string to lowercase
        .strip                     # Remove leading and trailing spaces
        .unicode_normalize(:nfd)   # Normalize Unicode to separate accents
        .tr(
          Transliteration::FROM,   # Replace special characters according to the map
          Transliteration::TO
        )
        .gsub(/\p{Mn}/, "")        # Remove accent marks (diacritics)
        .gsub(/[^a-z0-9\s-]/, "")  # Remove everything except a-z, 0-9, space, or hyphen
        .gsub(/[\s_-]+/, "-")      # Replace consecutive spaces, underscores, or hyphens with a single hyphen
        .gsub(/^-+|-+$/, "")       # Remove hyphens at the start or end
    end
  end
end
