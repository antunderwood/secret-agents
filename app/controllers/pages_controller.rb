class PagesController < HighVoltage::PagesController
  access_control do
    allow logged_in
    deny anonymous,  :to => :show, :unless => :public_page
  end
  private
  def public_page
    return false
    true if ["videos"].include?(params[:id])
  end
end
