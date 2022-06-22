class Payment < ActiveRecord::Base
belongs_to :category 
belongs_to :store

validates :amount, presence: true


def self.total_of_payments
  self.sum(:amount)
end

def total_by_category
  total = Payment.group(:category_id).sum(:amount)
  total
end

end