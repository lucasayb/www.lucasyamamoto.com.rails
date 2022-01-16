class ApplicationController < ActionController::Base
  before_action :set_pages
  
  def set_pages
    @pages = Page.all.order(:created_at => :desc)
  end
end
