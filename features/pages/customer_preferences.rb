class CustomerPreferences
  def initialize
    @rdx_language=".a-label.a-radio-label"
    @btn_save_changes=".a-button-input[aria-labelledby='icp-save-button-announce']"
    @drp_currency=".a-button-text.a-declarative"
  end

  def choose_language_by_text(language)
    find(@rdx_language, text:language).click
  end

  def save_changes
    find(@btn_save_changes).click
  end

end