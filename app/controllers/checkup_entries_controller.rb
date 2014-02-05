class CheckupEntriesController < ApplicationController
  before_action :set_checkup_entry, only: [:show, :edit, :update, :destroy]

  # GET /checkup_entries
  # GET /checkup_entries.json
  def index
    @checkup_entries = CheckupEntry.all
  end

  # GET /checkup_entries/1
  # GET /checkup_entries/1.json
  def show
  end

  # GET /checkup_entries/new
  def new
    @checkup_entry = CheckupEntry.new
  end

  # GET /checkup_entries/1/edit
  def edit
  end

  # POST /checkup_entries
  # POST /checkup_entries.json
  def create
    @checkup_entry = CheckupEntry.new(checkup_entry_params)

    respond_to do |format|
      if @checkup_entry.save
        format.html { redirect_to @checkup_entry, notice: 'Checkup entry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @checkup_entry }
      else
        format.html { render action: 'new' }
        format.json { render json: @checkup_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /checkup_entries/1
  # PATCH/PUT /checkup_entries/1.json
  def update
    respond_to do |format|
      if @checkup_entry.update(checkup_entry_params)
        format.html { redirect_to @checkup_entry, notice: 'Checkup entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @checkup_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checkup_entries/1
  # DELETE /checkup_entries/1.json
  def destroy
    @checkup_entry.destroy
    respond_to do |format|
      format.html { redirect_to checkup_entries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checkup_entry
      @checkup_entry = CheckupEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def checkup_entry_params
      params.require(:checkup_entry).permit(:entry_no, :staus, :request_datetime_1, :request_datetime_2, :request_datetime_3, :cource_code, :request_type, :request_prefecture_code, :request_hospital, :exam_datetime, :exam_hospital, :exam_note)
    end
end
