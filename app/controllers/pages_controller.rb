class PagesController < HighVoltage::PagesController
  access_control do
    allow logged_in
    allow anonymous,  :to => :show, :if => :public_page
  end
  private
  def public_page
    true if ["welcome"].include?(params[:id])
  end
end
