class FieldRecordsController < ApplicationController
  protect_from_forgery :except => [:create]
  before_action :set_field_record, only: [:show, :edit, :update, :destroy]

  def export_pgpi
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

    @field_record_details = FieldRecordDetail.where(field_record_id: params[:id])
    # render :handlers => :builder, :formats => :xml
  end

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
    @field_record.field_record_details.build
  end

  # GET /field_records/1/edit
  def edit
  end

  # POST /field_records
  # POST /field_records.json
  def create
    # @field_record = FieldRecord.new(field_record_params)
    @field_record = FieldRecord.create(field_record_params)

    respond_to do |format|
      if @field_record.save
        format.html { redirect_to @field_record, notice: 'レコードが追加されました' }
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
      if @field_record.update(update_field_record_params)
        format.html { redirect_to @field_record, notice: '正常に更新されました' }
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
      format.html { redirect_to field_records_url, notice: '正常に削除されました' }
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
      params.fetch(:field_record, {}).permit(:id, :kanriku, :nendo, :rinpan, :bakku, :shiban, :shouhan, :kubun, :daihyou, field_record_details_attributes: [:bangou, :jushu, :tyokkei, :jukou, :hini, :budomari, :lat, :lon])
    end

    def update_field_record_params
      params.fetch(:field_record, {}).permit(:id, :kanriku, :nendo, :rinpan, :bakku, :shiban, :shouhan, :kubun, :daihyou, field_record_details_attributes: [:bangou, :jushu, :tyokkei, :jukou, :hini, :budomari, :lat, :lon, :_destroy, :id])
    end

end
