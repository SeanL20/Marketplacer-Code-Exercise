require 'json'

# create class call Product for the storing and retrieving of the product uuid, name and price.
class Product
	attr_accessor :uuid, :name, :price

	def initialize(data_hash)
		@uuid = data_hash["uuid"]
		@name = data_hash["name"]
		@price = data_hash["price"]
	end
end

# Imports the product items off the file from the products.json file.
def import_products
	# uses the file read to retrieve the data from the products. json file.
	file = File.read('./products.json')

	# uses the Json gem to parse the file variables into json format.
	data_hash = JSON.parse(file)

	# create array so to store the product class objects for each items 
	products = []
	data_hash.each do |item|
		# initialize product class object then store into the product array
		products << Product.new(item)
	end
end

import_products