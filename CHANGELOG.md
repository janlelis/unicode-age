## CHANGELOG

### 2.0.0

#### Breaking change

Strings which contain unassigned codepoints (general category of **Cn**), will raise a `Unicode::Age::UnknownAge` exception.

#### Unicode update

Add Unicode 10 to list of known Unicode versions

### 1.1.0

* Detect Unicode 9.0 (Ruby 2.4)

### 1.0.1

* Fix for Ruby 2.2, 2.1

### 1.0.0

* Initial release

