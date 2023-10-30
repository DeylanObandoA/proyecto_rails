class Admin::AboutController < ApplicationController

    def index 
        @users = User.all
    end

    def show
    end

    def edit
    end

    def new 
      @user = User.new

    end 

    def update
        respond_to do |format|
            if @about.update(project_params)
                format.html { redirect_to about_url(@about), notice: "Abouy was successfully updated." }
                format.json { render :show, status: :ok, location: @about }
            else
                format.html { render :edit, status: :unprocessable_entity }
                format.json { render json: @about.errors, status: :unprocessable_entity }
            end
        end
    end
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_about
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def skill_about
      params.require(:user).permit(:name, :type_skills_id)
    end
end
