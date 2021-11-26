class Player < ApplicationRecord
  before_save :assign_age

  def assign_age
    self.age = DateUtils.age(birthdate)
  end
end
