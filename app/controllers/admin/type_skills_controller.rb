class Admin::TypeSkillsController < ApplicationController
  before_action :set_type_skill, only: %i[ show edit update destroy ]

  # GET /type_skills or /type_skills.json
  def index
    @type_skills = TypeSkill.all
  end

  # GET /type_skills/1 or /type_skills/1.json
  def show
  end

  # GET /type_skills/new
  def new
    @type_skill = TypeSkill.new
  end

  # GET /type_skills/1/edit
  def edit
  end

  # POST /type_skills or /type_skills.json
  def create
    @type_skill = TypeSkill.new(type_skill_params)

    respond_to do |format|
      if @type_skill.save
        format.html { redirect_to type_skill_url(@type_skill), notice: "Type skill was successfully created." }
        format.json { render :show, status: :created, location: @type_skill }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @type_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_skills/1 or /type_skills/1.json
  def update
    respond_to do |format|
      if @type_skill.update(type_skill_params)
        format.html { redirect_to type_skill_url(@type_skill), notice: "Type skill was successfully updated." }
        format.json { render :show, status: :ok, location: @type_skill }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @type_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_skills/1 or /type_skills/1.json
  def destroy
    @type_skill.destroy

    respond_to do |format|
      format.html { redirect_to type_skills_url, notice: "Type skill was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_skill
      @type_skill = TypeSkill.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def type_skill_params
      params.require(:type_skill).permit(:name)
    end
end
