class TutorialMakerAdminsController < InheritedResources::Base

  private

    def tutorial_maker_admin_params
      params.require(:tutorial_maker_admin).permit(:name, :content, :code, :file, :image, :language)
    end
end

