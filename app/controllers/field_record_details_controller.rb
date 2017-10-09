class FieldRecordDetailsController < ApplicationController
  before_action :set_field_record_detail, only: [:show, :edit, :update, :destroy]
  before_action :prepare_common, :only => [:index]

  # GET /field_record_details
  # GET /field_record_details.json
  def index
    @field_record_details = FieldRecordDetail.all
  end

  # GET /field_record_details/1
  # GET /field_record_details/1.json
  def show
  end

  # GET /field_record_details/new
  def new
    @field_record_detail = FieldRecordDetail.new
  end

  # GET /field_record_details/1/edit
  def edit
  end

  # POST /field_record_details
  # POST /field_record_details.json
  def create
    @field_record_detail = FieldRecordDetail.new(field_record_detail_params)

    respond_to do |format|
      if @field_record_detail.save
        format.html { redirect_to @field_record_detail, notice: 'Field record detail was successfully created.' }
        format.json { render :show, status: :created, location: @field_record_detail }
      else
        format.html { render :new }
        format.json { render json: @field_record_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /field_record_details/1
  # PATCH/PUT /field_record_details/1.json
  def update
    respond_to do |format|
      if @field_record_detail.update(field_record_detail_params)
        format.html { redirect_to @field_record_detail, notice: 'Field record detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @field_record_detail }
      else
        format.html { render :edit }
        format.json { render json: @field_record_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /field_record_details/1
  # DELETE /field_record_details/1.json
  def destroy
    @field_record_detail.destroy
    respond_to do |format|
      format.html { redirect_to field_record_details_url, notice: 'Field record detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_field_record_detail
      @field_record_detail = FieldRecordDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def field_record_detail_params
      params.fetch(:field_record_detail, {}).permit(:id, :bangou, :jushu, :tyokkei, :jukou, :hini, :budomari, :lat, :lon, :field_record_id)
    end

    def prepare_common
      # 樹種コード
      @tree_label = {
          1=>'イチイ',
          2=>'スギ',
          3=>'アカマツ',
          5=>'ヨーアカマツ',
          7=>'ゴヨウ',
          10=>'ストロブ',
          16=>'ヒバ',
          17=>'カラマツ',
          23 => 'トドマツ',
          25 => 'エゾマツ',
          26 => 'アカエゾ',
          27 => 'トウヒ',
          39 => 'ソノタ針',
          40 => 'コミ',
      }
    end
end
