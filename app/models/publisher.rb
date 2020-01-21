class Publisher < ApplicationRecord
  has_many :authors

  validates :name, presence: true,
                length: {minimum:3}

end
