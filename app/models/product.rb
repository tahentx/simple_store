class Product < ApplicationRecord
	before_create :create_uuid
	validates :title, :price, :stock_quantity, presence: true
	validates :price, numericality: { greater_than_or_equal_to: 0.01 }
	validates :stock_quantity, numericality: { only_integer: true }

	private
	def create_uuid
	    begin
	      self.uuid = SecureRandom.uuid
	    end while self.class.exists?(:uuid => uuid)
    end
end
