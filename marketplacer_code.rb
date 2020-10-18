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

	return products
end

# Create method for the checkout so it would display the list of products and calculate the total. 
def checkout
	# add all the products into the shopping cart.
	shopping_cart = import_products

	# print the first line.
	printf "\nProducts in the shopping cart:\n"
	
	# loop through the shopping to print the product and the price of the product. 
	shopping_cart.each_with_index do |product, index|
		printf "#{index+1}: #{product.name} - $#{product.price}\n"
	end

	# Generate The Total by Converting The Price To Float In The MAp Function Before Summing Up The Array That Was Produced By The Map.
	total = shopping_cart.map{ |u| u.price.to_f }.sum

	# print out the Total Price
	printf "\nTotal Price: $#{total}\n\n"
end

checkout