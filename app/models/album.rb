class Album < ActiveRecord::Base
  has_many :photos
  belongs_to :user

  validates :title, presence: true
  validates :rating, numericality: { only_integer: true, allow_blank: true,
    greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }

  scope :public, -> { where(public: true) }
end
