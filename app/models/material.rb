class Material < ActiveRecord::Base
	has_many :raw_transactions
	before_save :save_average_price
	accepts_nested_attributes_for :raw_transactions
	# validates_associated :raw_transactions

	private
	def save_average_price
		self.average_price = 
			Material.raw_transaction.t_total_price / 
			self.RawTransaction.t_quantity
	end
end
