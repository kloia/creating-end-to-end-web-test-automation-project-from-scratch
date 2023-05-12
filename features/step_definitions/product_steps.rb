product_page = ProductPage.new

When(/^add the item to cart on product page$/) do
  product_page.add_product_to_cart
end