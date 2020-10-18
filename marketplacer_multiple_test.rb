require "minitest/autorun"
require_relative 'marketplacer_code'
require_relative 'marketplacer_test'

class MarketplacerMultipleTest < Minitest::Test
    def setup
        product_hash = [
            {
                "uuid" => 1,
                "name" => "Test 01",
                "price" => "1.00"
            },
            {
                "uuid" => 2,
                "name" => "Test 02",
                "price" => "2.00"
            },
        ]

        @products = []

        product_hash.each do |product|
            @products << Product.new(product)
        end
    end

    def test_size
        assert_equal 2, @products.count
    end

    def test_first_uuid
        assert_equal 1, @products[0].uuid
    end

    def test_first_name
        assert_equal "Test 01", @products[0].name
    end

    def test_first_price
        assert_equal "1.00", @products[0].price
    end

    def test_second_uuid
        assert_equal 2, @products[1].uuid
    end

    def test_second_name
        assert_equal "Test 02", @products[1].name
    end

    def test_second_price
        assert_equal "2.00", @products[1].price
    end

    def test_total
        assert_equal 3.00, @products.map{ |u| u.price.to_f }.sum
    end
end