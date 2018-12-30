require_relative "age/version"

module Unicode
  module Age
    class UnknownAge < StandardError; end

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
      9.0,
      10.0,
      11.0,
    ].freeze

    KNOWN_UNICODE_REGEXES = KNOWN_UNICODE_VERSIONS.map{ |uv|
      begin
        /\A\p{age=#{"%.1f" % uv}}*\z/
      rescue RegexpError
      end
    }.compact.freeze

    def self.of(string)
      raise(UnknownAge, "The string contains unassigned codepoints, so the Unicode version required cannot be determined. Your Ruby version supports Unicode #{UNICODE_VERSION}.") if string =~ /\A\p{Unassigned}*\z/
      KNOWN_UNICODE_VERSIONS.find.with_index{ |uv, index|
        string =~ KNOWN_UNICODE_REGEXES[index]
      }
    end
  end
end

