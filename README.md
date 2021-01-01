# Unicode::Age [![[version]](https://badge.fury.io/rb/unicode-age.svg)](https://badge.fury.io/rb/unicode-age)  [![[ci]](https://github.com/janlelis/unicode-age/workflows/Test/badge.svg)](https://github.com/janlelis/unicode-age/actions?query=workflow%3ATest)

A micromodule to detect which Unicode version is required to display a string.

```ruby
Unicode::Age.of "A" # => 1.1
Unicode::Age.of "ℜսᖯʏ" # => 3.0
Unicode::Age.of "ℜ𝘂ᖯʏ" # => 3.1
Unicode::Age.of "🚡" # => 6.0
Unicode::Age.of "🛲" # => 7.0
Unicode::Age.of "🌮 " # => 8.0
Unicode::Age.of "🛒" # => 9.0
Unicode::Age.of "🛷"  # => 10.0
Unicode::Age.of "\u{10FFFF}" # => nil
Unicode::Age.of "\u{10FFFD}" # => 2.0
```

Characters of status "Unassigned" (Unicode General Category of **Cn**) will raise a `Unicode::Age::UnknownAge` exception.

## Supported Ruby/Unicode versions

See the [Unicode — Ruby version table at Idiosyncratic Ruby](https://idiosyncratic-ruby.com/73-unicode-version-mapping.html)

## MIT License

Copyright (C) 2016-2021 Jan Lelis <https://janlelis.com>. Released under the MIT license.
