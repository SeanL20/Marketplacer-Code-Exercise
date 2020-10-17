require 'json'

def read_json_file
	file = File.read('./products.json')

	data_hash = JSON.parse(file)

	puts data_hash
end

read_json_file