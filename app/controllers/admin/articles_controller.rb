class Admin::ArticlesController < AdminController
  before_action :set_article, only: [:edit, :hide, :publish, :update, :destroy]

  def index
    @articles = Article.all.paginate(page: params[:page] || 1, per_page: 50).order(:created_at => :desc)
  end
  
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    respond_to do |format|
      if @article.save
        format.html { redirect_to admin_articles_path, notice: 'Article was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def publish
    respond_to do |format|
      if @article.update(published: true)
        format.html { redirect_to admin_articles_path, notice: 'Article was successfully published.' }
      else
        format.html { render :edit }
      end
    end
  end

  def hide
    respond_to do |format|
      if @article.update(published: false)
        format.html { redirect_to admin_articles_path, notice: 'Article was successfully unpublished.' }
      else
        format.html { render :edit }
      end
    end
  end

  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to admin_articles_path, notice: 'Article was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to admin_articles_url, notice: 'Article was successfully destroyed.' }
    end
  end

  private

  def set_article
    @article = Article.friendly.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :permalink, :reading_time, :thumbnail_url, :published, :content)
  end
end