class ArticlesController < ApplicationController
    def new
    end

    # Triggered by submitting form at
    # articles/new page
    def create
        # see how parameters look like
        # render plain: params[:article].inspect
        @article = Article.new(article_params)
 
        @article.save
        redirect_to @article
    end

    # /articles/id
    def show
        # find which article you want to display
        @article = Article.find(params[:id])
    end

    private
    # We have to define our permitted controller parameters to prevent wrongful mass assignment.
    # In this case, we want to both allow and require the title and text parameters for valid use of create. 
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
