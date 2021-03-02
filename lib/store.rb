class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }

  def has_mens_or_womens_apparel
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add(:apparel, "Must carry at least one of the mens or womens apparel")
    end
  end 

end
