class BlogPostsController < ApplicationController
  before_action :set_blog_post, only: [:show, :edit, :update, :destroy, :toggle_status]

  # GET /blog_posts
  # GET /blog_posts.json
  def index
    @blog_posts = BlogPost.all
  end

  # GET /blog_posts/1
  # GET /blog_posts/1.json
  def show
  end

  # GET /blog_posts/new
  def new
    @blog_post = BlogPost.new
  end

  # GET /blog_posts/1/edit
  def edit
  end

  # POST /blog_posts
  # POST /blog_posts.json
  def create
    @blog_post = BlogPost.new(blog_post_params)

    respond_to do |format|
      if @blog_post.save
        format.html { redirect_to @blog_post, notice: 'Blog post was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /blog_posts/1
  # PATCH/PUT /blog_posts/1.json
  def update
    respond_to do |format|
      if @blog_post.update(blog_post_params)
        format.html { redirect_to @blog_post, notice: 'Blog post was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /blog_posts/1
  # DELETE /blog_posts/1.json
  def destroy
    @blog_post.destroy
    respond_to do |format|
      format.html { redirect_to blog_posts_url, notice: 'Post was removed.' }
    end
  end

  def toggle_status
    if @blog_post.draft?
      @blog_post.published!
    elsif @blog_post.published?
      @blog_post.draft!
    end

    redirect_to blog_posts_url, notice: 'Post status has been updated.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_post
      @blog_post = BlogPost.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_post_params
      params.require(:blog_post).permit(:title, :body)
    end
end
