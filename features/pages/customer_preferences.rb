class CustomerPreferences
  def initialize
    @rdx_language_css=".a-label.a-radio-label"
    @btn_save_changes_css=".a-button-input[aria-labelledby='icp-save-button-announce']"
    @drp_currency_css=".a-button-text.a-declarative"
  end

  def choose_language_by_text(language)
    find(@rdx_language_css, text:language).click
  end

  def save_changes
    find(@btn_save_changes_css).click
  end

end