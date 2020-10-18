require "minitest/autorun"
require_relative 'marketplacer_code'

class MarketplacerTest < Minitest::Test
    def setup
        @product = Product.new({
            "uuid" => 1,
            "name" => "Test",
            "price" => "10.00"
        })
    end

    def test_uuid
        assert_equal 1, @product.uuid
    end

    def test_name
        assert_equal "Test", @product.name
    end

    def test_price
        assert_equal "10.00", @product.price
    end
end