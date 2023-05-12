class CartPage

  def initialize
    @lbl_cart_add_success="#NATC_SMART_WAGON_CONF_MSG_SUCCESS"
  end

  def verify_product_added_to_cart
    page.should have_selector(@lbl_cart_add_success)
  end
end