class ArticlesController < ApplicationController
   before_action :set_param, only: [:edit, :update, :show, :destroy]
   
   def index
       @articles = Article.all
   end
   
   def new
       @article = Article.new
   end
   
   def create
       #render plain: params[:article].inspect
       @article = Article.new(article_params)
       
        if @article.save
            flash[:success] = "Article successfully saved"
            redirect_to article_path(@article)
        else
            render 'new'
        end
   end
   
   def update
       
        if @article.update(article_params)
            flash[:success] = "Article successfully updated"
            redirect_to article_path(@article)
        else
            render 'edit'
        end
    end
    
    def show
    end

    def destroy

        @article.destroy
        
        flash[:danger] = "Article was successfully deleted"
        
        redirect_to articles_path
        
    end
    
    def edit
    end
    
   private 
   
        def article_params
            params.require(:article).permit(:title,:description)
        end
        
        def set_param
            @article = Article.find(params[:id])
        end
        
end
