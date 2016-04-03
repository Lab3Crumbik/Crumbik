class FunctionsController < InheritedResources::Base

  private

    def function_params
      params.require(:function).permit(:name, :info, :url, :father_id, :rol_id)
    end
end
