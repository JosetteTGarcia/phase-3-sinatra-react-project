class Payment < ActiveRecord::Base
belongs_to :category 
belongs_to :store

validates :amount, presence: true
validates :is_need, presence: true


end