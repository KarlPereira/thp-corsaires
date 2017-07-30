class Corsair < ApplicationRecord
  validates :first_name, presence: true,
            length: { maximum: 20 }
 validates :age, presence: true
            validates_inclusion_of :age, in: 15..120
end
