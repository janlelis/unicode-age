# Unicode::Age [![[version]](https://badge.fury.io/rb/unicode-age.svg)](https://badge.fury.io/rb/unicode-age)  [![[travis]](https://travis-ci.org/janlelis/unicode-age.svg)](https://travis-ci.org/janlelis/unicode-age)

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

**This is a breaking change:** In the current non-*pre* version of the gem on rubygems.org, unassigned characters will just return `nil`

## Supported Ruby/Unicode versions

Ruby version | Unicode version
-------------|----------------
**2.6.3+**   | **12.1.0**
**2.6.2**    | **12.0.0**
**2.6.1-**   | **11.0.0**
**2.5**      | **10.0.0**
**2.4**      | **9.0.0**
**2.3**      | **8.0.0**
**2.2**      | **7.0.0**
**2.1**      | **6.1.0**

## MIT License

Copyright (C) 2016-2018 Jan Lelis <http://janlelis.com>. Released under the MIT license.
