class ArticlesController < ApplicationController
    def new
    end

    # Triggered by submitting form at
    # articles/new page
    def create
        # see how parameters look like
        render plain: params[:article].inspect
    end
end
