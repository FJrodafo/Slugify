# Main module for the gem
module FJrodafo
  # Submodule for slugify functionality
  module Slugify
    # Module that contains the character transliteration mappings
    module Transliteration
      # A hash mapping special or accented characters to their ASCII equivalents
      # Used to replace characters that are not URL-friendly
      MAP = {
        "ø" => "o",
        "ß" => "ss",
        "æ" => "ae",
        "œ" => "oe",
        "ł" => "l"
      }.freeze  # Freeze the hash to make it immutable

      # String of all characters to replace, used with `String#tr`
      # Example: "øßæœł"
      FROM = MAP.keys.join.freeze

      # String of replacement characters, used with `String#tr`
      # Example: "ossaeoel"
      TO   = MAP.values.join.freeze
    end
  end
end
