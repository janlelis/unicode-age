# Unicode::Age [![[version]](https://badge.fury.io/rb/unicode-age.svg)](http://badge.fury.io/rb/unicode-age)  [![[travis]](https://travis-ci.org/janlelis/unicode-age.png)](https://travis-ci.org/janlelis/unicode-age)

A micromodule to detect which Unicode version is required to display a string.

```ruby
Unicode::Age.of "A" # => 1.1
Unicode::Age.of "ℜսᖯʏ" # => 3.0
Unicode::Age.of "ℜ𝘂ᖯʏ" # => 3.1
Unicode::Age.of "🚡" # => 6.0
Unicode::Age.of "🛲" # => 7.0
Unicode::Age.of "🌮 " # => 8.0
Unicode::Age.of "\u{10FFFF}" # => nil
Unicode::Age.of "\u{10FFFD}" # => 2.0
```

Characters of status "Unassigned" (Unicode General Category of **Cn**) will return `nil`.

Unicode version: **8.0.0**

## MIT License

Copyright (C) 2016 Jan Lelis <http://janlelis.com>. Released under the MIT license.
