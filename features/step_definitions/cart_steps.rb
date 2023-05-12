cart_page = CartPage.new

Then(/^verify the item is added to cart on cart page$/) do
  cart_page.verify_product_added_to_cart
end