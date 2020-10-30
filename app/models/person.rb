class Person < ApplicationRecord
  #validates :name, presence: true, length: { is: 5 }, allow_blank: true
  def a_method_used_for_validation_purposes
    errors.add(:name, :invalid_characters, not_allowed: "!@#%*()_-+=")
  end
end
