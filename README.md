# Marketplacer-Code-Exercise
This Repository is for the code exercise for marketplacer role from [here](https://gist.github.com/blazeblazeblaze/cd461aedf6c40256f765981a249c41ab) without the discount scope.

#### Gems required for this to operate properly:
- Json (gem install json)
- Minitest (gem install minitest)

#### Testing
- For Testing, run the ```ruby script marketplacer_multiple_test.rb```, as it would include the running of the marketplacer_code.rb script as well as the marketplacer_test.rb script.

#### Design Resasonings
- Create Product class so that it would be store the products jsons as class objects.
- Create method called "import_products" for reading the file Product.json and would return an array of product class.
- Create method called "checkout" so that it would call the "import_products" to the shopping cart variable, it would then loops through the product class array to print out the products in a list as well as calculating the total price of the products by converting the price to float and summing it all up.