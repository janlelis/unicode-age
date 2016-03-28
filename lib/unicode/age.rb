require_relative "age/version"

module Unicode
  module Age
    KNOWN_UNICODE_VERSIONS = [
      1.1,
      2.0,
      2.1,
      3.0,
      3.1,
      3.2,
      4.0,
      4.1,
      5.0,
      5.1,
      5.2,
      6.0,
      6.1,
      6.2,
      6.3,
      7.0,
      8.0,
    ].freeze

    def self.of(string)
      return nil if string =~ /\A\p{Unassigned}*\z/
      KNOWN_UNICODE_VERSIONS.find{ |uv|
        string =~ Regexp.compile('\A\p{age=%.1f}*\z' % uv)
      }
    end
  end
end

