class Document < ApplicationRecord
  VALID_TYPES = ['marksheet', 'trial', 'educational', 'checker'].freeze
  self.inheritance_column = nil

  belongs_to :employee
  has_one_attached :image
  validates :name, :type, presence: true
  validates :type, inclusion: { in: VALID_TYPES }
end
