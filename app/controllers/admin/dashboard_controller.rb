class Admin::DashboardController < ApplicationController
    before_action :set_dashboard, only: %i[ show edit update destroy ]

    # GET /dashboard or /dashboard.json
    def index
        @dashboard = Dashboard.all
    end

    # GET /dashboard/1 or /dashboard/1.json
    def show
    end

    # GET /dashboard/new
    def new
        @dashboard = Dashboard.new
    end

    # GET /dashboard/1/edit
    def edit
    end

    # POST /dashboard or /dashboard.json
    def create
        @dashboard = Dashboard.new(dashboard_params)

        respond_to do |format|
            if @dashboard.save
                format.html { redirect_to dashboard_url(@dashboard), notice: "dashboard was successfully created." }
                format.json { render :show, status: :created, location: @dashboard }
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @dashboard.errors, status: :unprocessable_entity }
            end
        end
    end

    # PATCH/PUT /dashboard/1 or /dashboard/1.json
    def update
        respond_to do |format|
            if @dashboard.update(dashboard_params)
                format.html { redirect_to dashboard_url(@dashboard), notice: "dashboard was successfully updated." }
                format.json { render :show, status: :ok, location: @dashboard }
            else
                format.html { render :edit, status: :unprocessable_entity }
                format.json { render json: @dashboard.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /dashboard/1 or /dashboard/1.json
    def destroy
    @dashboard.destroy

    respond_to do |format|
        format.html { redirect_to dashboard_url, notice: "dashboard was successfully destroyed." }
        format.json { head :no_content }
    end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_dashboard
        @dashboard = Dashboard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dashboard_params
        params.require(:dashboard).permit()
    end


end
