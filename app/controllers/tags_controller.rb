class TagsController < ApplicationController
    
    def index
        @tags = Tag.all
    end

    def show
        @tag = Tag.find(params[:id])
    end

    def destroy
        @tag = Tag.find(params[:id])
        
        @tagging = Tagging.new
        @tagging = Tagging.find(params[:id])
           if @tagging.destroy
               flash[:success] = 'Object was successfully deleted.'
               redirect_to tags_path
           else
               flash[:error] = 'Something went wrong'
               redirect_to tags_patalsjhasljhah
           end
        # @tag.destroy(params[:id])
        # flash.notice = "Tag '#{@tag.name}' deleted"
        # redirect_to tags_path
    end
end
