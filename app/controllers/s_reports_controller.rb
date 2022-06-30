class SReportsController < ApplicationController
  before_action :set_s_report, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /s_reports or /s_reports.json
  def index
    @s_reports = SReport.all
  end

  # GET /s_reports/1 or /s_reports/1.json
  def show
  end

  # GET /s_reports/new
  def new
    @s_report = SReport.new
  end

  # GET /s_reports/1/edit
  def edit
     if @s_report.user_id != current_user.id 
        respond_to do |f| 
          f.html { redirect_to s_reports_path, notice: "Cannot Edit this Scouting Report as it belongs to" + " " + @s_report.scout }
        end
      end  
  end

  # POST /s_reports or /s_reports.json
  def create
    @s_report = SReport.new(s_report_params)

    respond_to do |format|
      if @s_report.save
        format.html { redirect_to s_reports_path, notice: "Scouting Report was successfully created." }
        format.json { render :show, status: :created, location: s_reports_path }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @s_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /s_reports/1 or /s_reports/1.json
  def update
    respond_to do |format|
      if @s_report.update(s_report_params)
        format.html { redirect_to s_reports_path, notice: "Scouting Report was successfully updated." }
        format.json { render :show, status: :ok, location: s_reports_path }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @s_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /s_reports/1 or /s_reports/1.json
  def destroy
    @s_report.destroy

    respond_to do |format|
      format.html { redirect_to s_reports_url, notice: "Scouting Report was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_s_report
      @s_report = SReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def s_report_params
      params.require(:s_report).permit(:name, :ht, :wt, :pos, :school, :notes, :scout, :links, :user_id)
    end
end
