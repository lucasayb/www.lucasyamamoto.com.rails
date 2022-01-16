class Admin::PagesController < AdminController
  before_action :set_page, only: [:edit, :update, :destroy]

  def index
    @pages = Page.all.paginate(page: params[:page] || 1, per_page: 50).order(:created_at => :desc)
  end
  
  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    respond_to do |format|
      if @page.save
        format.html { redirect_to admin_pages_path, notice: 'Page was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to admin_pages_path, notice: 'Page was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @page.destroy
    respond_to do |format|
      format.html { redirect_to admin_pages_url, notice: 'Page was successfully destroyed.' }
    end
  end

  private

  def set_page
    @page = Page.friendly.find(params[:id])
  end

  def page_params
    params.require(:page).permit(:title, :content, :permalink)
  end
end