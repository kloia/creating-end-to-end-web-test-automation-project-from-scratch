class ProductPage

  def initialize
    @btn_add_to_cart_css = "#add-to-cart-button"
  end

  def add_product_to_cart
    find(@btn_add_to_cart_css).click
  end
end