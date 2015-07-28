class JohndataController < ApplicationController
  before_action :set_johndatum, only: [:show, :edit, :update, :destroy]

  # GET /johndata
  # GET /johndata.json
  def index
    @johndata = Johndatum.all
  end

  # GET /johndata/1
  # GET /johndata/1.json
  def show
  end

  # GET /johndata/new
  def new
    @johndatum = Johndatum.new
  end

  # GET /johndata/1/edit
  def edit
  end

  # POST /johndata
  # POST /johndata.json
  def create
    @johndatum = Johndatum.new(johndatum_params)

    respond_to do |format|
      if @johndatum.save
        format.html { redirect_to @johndatum, notice: 'Johndatum was successfully created.' }
        format.json { render :show, status: :created, location: @johndatum }
      else
        format.html { render :new }
        format.json { render json: @johndatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /johndata/1
  # PATCH/PUT /johndata/1.json
  def update
    respond_to do |format|
      if @johndatum.update(johndatum_params)
        format.html { redirect_to @johndatum, notice: 'Johndatum was successfully updated.' }
        format.json { render :show, status: :ok, location: @johndatum }
      else
        format.html { render :edit }
        format.json { render json: @johndatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /johndata/1
  # DELETE /johndata/1.json
  def destroy
    @johndatum.destroy
    respond_to do |format|
      format.html { redirect_to johndata_url, notice: 'Johndatum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_johndatum
      @johndatum = Johndatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def johndatum_params
      params.require(:johndatum).permit(:what, :is, :your, :name, :bio, :birthday)
    end
end
