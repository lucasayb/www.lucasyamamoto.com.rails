class HomeController < ApplicationController
  def index
    @articles = Article.all.paginate(page: params[:page], per_page: 8).order(:created_at => :desc)
  end
end
