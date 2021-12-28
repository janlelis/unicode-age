## CHANGELOG

### 2.3.0

* Support Unicode 13 (Ruby 3.1)

### 2.2.0

* Support Ruby 3.0

### 2.1.0

* Support Unicode 12.0 (Ruby 2.6.2), Unicode 12.1 (Ruby 2.6.3)

### 2.0.1

* Support Unicode 11 (Ruby 2.6.1, 2.6.0)

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

