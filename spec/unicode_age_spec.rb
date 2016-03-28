require_relative "../lib/unicode/age"
require "minitest/autorun"

describe Unicode::Age do
  it "returns required Unicode version to display a string" do
    assert_equal 1.1, Unicode::Age.of("A")
    assert_equal 2.0, Unicode::Age.of("\u{10FFFD}")
    assert_equal 3.0, Unicode::Age.of("ℜսᖯʏ")
    assert_equal 3.1, Unicode::Age.of("ℜ𝘂ᖯʏ")
    assert_equal 6.0, Unicode::Age.of("🚡")
    assert_equal 7.0, Unicode::Age.of("🛲")
    assert_equal 8.0, Unicode::Age.of("🌮 ")
  end

  it "returns nil for unassigned codepoints" do
    assert_equal nil, Unicode::Age.of("\u{10FFFF}")
  end
end

