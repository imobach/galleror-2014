class Album < ActiveRecord::Base
  validates :title, presence: true
  validates :rating, numericality: { only_integer: true, allow_blank: true,
    greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
