class PagesController < ApplicationController
  def home
    @blog_posts = BlogPost.all
    @skills = Skill.all
  end

  def about
  end

  def contact
  end
end
