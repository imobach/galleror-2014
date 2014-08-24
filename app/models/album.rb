class Album < ActiveRecord::Base
  belongs_to :user
  has_many :photos
  has_many :votes

  validates :title, presence: true
  validates :rating, numericality: { only_integer: true, allow_blank: true,
    greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }

  scope :public, -> { where(public: true) }

  after_initialize :set_default_values, if: :new_record?

  protected

  def set_default_values
    self.public = true if public.nil?
    self.rating = 1 if rating.blank?
  end
end
