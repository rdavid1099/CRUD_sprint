class Merchant < ApplicationRecord
  validates :name, presence: true
  validates :items_type, presence: true

end
