module ApplicationHelper
  def controller_full_name
    params[:controller].present? ? params[:controller].gsub('/', '_') : controller_name
  end
end
