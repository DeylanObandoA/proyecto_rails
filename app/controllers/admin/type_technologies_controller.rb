class Admin::TypeTechnologiesController < ApplicationController
  before_action :set_type_technology, only: %i[ show edit update destroy ]

  # GET /type_technologies or /type_technologies.json
  def index
    @type_technologies = TypeTechnology.all
  end

  # GET /type_technologies/1 or /type_technologies/1.json
  def show
  end

  # GET /type_technologies/new
  def new
    @type_technology = TypeTechnology.new
  end

  # GET /type_technologies/1/edit
  def edit
  end

  # POST /type_technologies or /type_technologies.json
  def create
    @type_technology = TypeTechnology.new(type_technology_params)

    respond_to do |format|
      if @type_technology.save
        format.html { redirect_to type_technology_url(@type_technology), notice: "Type technology was successfully created." }
        format.json { render :show, status: :created, location: @type_technology }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @type_technology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_technologies/1 or /type_technologies/1.json
  def update
    respond_to do |format|
      if @type_technology.update(type_technology_params)
        format.html { redirect_to type_technology_url(@type_technology), notice: "Type technology was successfully updated." }
        format.json { render :show, status: :ok, location: @type_technology }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @type_technology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_technologies/1 or /type_technologies/1.json
  def destroy
    @type_technology.destroy

    respond_to do |format|
      format.html { redirect_to type_technologies_url, notice: "Type technology was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_technology
      @type_technology = TypeTechnology.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def type_technology_params
      params.require(:type_technology).permit(:name)
    end
end
