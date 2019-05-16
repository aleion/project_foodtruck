class Product < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
  belongs_to :category, optional: true
  has_many :line_items

  def not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, "line items present")
      throw :abort
    end
  end
end
