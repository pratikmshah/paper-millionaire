class Stock < ActiveRecord::Base
  validates :ticker, { presence: true, :uniqueness => { :case_sensitive => false } }

  before_save :uppercase_field

  def uppercase_field
    self.ticker.upcase!
  end
end
