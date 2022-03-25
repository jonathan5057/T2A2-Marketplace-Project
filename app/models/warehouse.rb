class Warehouse < ApplicationRecord
  belongs_to :listing

  def full_address
    " #{self.city} #{self.state} #{self.postcode} "
  end
end
