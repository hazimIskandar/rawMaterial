class Material < ActiveRecord::Base
	has_many :raw_transactions

	accepts_nested_attributes_for :raw_transactions
	# validates_associated :raw_transactions

	private
	def save_average_price
		self.average_price = 
			self.RawTransaction.t_total_price / 
			self.raw_transactions.t_quantity
	end
end
