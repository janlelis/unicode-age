require_relative "../age"

class String
  def unicode_age
    Unicode::Age.of(self)
  end
end
