class Admin::TagsController < AdminController
  before_action :set_tag, only: [:edit, :update, :destroy]

  def index
    @tags = Tag.all.paginate(page: params[:page] || 1, per_page: 50).order(:created_at => :desc)
  end
  
  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    respond_to do |format|
      if @tag.save
        format.html { redirect_to admin_tags_path, notice: 'Tag was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @tag.update(tag_params)
        format.html { redirect_to admin_tags_path, notice: 'Tag was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @tag.destroy
    respond_to do |format|
      format.html { redirect_to admin_tags_url, notice: 'Tag was successfully destroyed.' }
    end
  end

  private

  def set_tag
    @tag = Tag.friendly.find(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:title, :permalink)
  end
end