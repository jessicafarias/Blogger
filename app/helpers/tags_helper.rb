module TagsHelper
    def tag_params
        params.require(:tag).permit(:name)
    end
end
