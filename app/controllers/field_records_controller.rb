class FieldRecordsController < ApplicationController
  before_action :set_field_record, only: [:show, :edit, :update, :destroy]

  # GET /field_records
  # GET /field_records.json
  def index
    @field_records = FieldRecord.all
  end

  # GET /field_records/1
  # GET /field_records/1.json
  def show
  end

  # GET /field_records/new
  def new
    @field_record = FieldRecord.new
  end

  # GET /field_records/1/edit
  def edit
  end

  # POST /field_records
  # POST /field_records.json
  def create
    @field_record = FieldRecord.new(field_record_params)

    respond_to do |format|
      if @field_record.save
        format.html { redirect_to @field_record, notice: 'Field record was successfully created.' }
        format.json { render :show, status: :created, location: @field_record }
      else
        format.html { render :new }
        format.json { render json: @field_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /field_records/1
  # PATCH/PUT /field_records/1.json
  def update
    respond_to do |format|
      if @field_record.update(field_record_params)
        format.html { redirect_to @field_record, notice: 'Field record was successfully updated.' }
        format.json { render :show, status: :ok, location: @field_record }
      else
        format.html { render :edit }
        format.json { render json: @field_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /field_records/1
  # DELETE /field_records/1.json
  def destroy
    @field_record.destroy
    respond_to do |format|
      format.html { redirect_to field_records_url, notice: 'Field record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_field_record
      @field_record = FieldRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def field_record_params
      params.fetch(:field_record, {})
    end
end
