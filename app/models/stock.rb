class Stock < ActiveRecord::Base
  # validate there is a ticker and that ticker is not in db regardless of its case
  validates :ticker, { presence: true, :uniqueness => { :case_sensitive => false } }

  before_save :uppercase_field  # before saving uppercase all letters

  def uppercase_field
    self.ticker.upcase!
  end
end
