class TwitadvicesController < ApplicationController
  before_action :set_twitadvice, only: %i[ show edit update destroy ]

  # GET /twitadvices or /twitadvices.json
  def index
    @twitadvices = Twitadvice.all
  end

  # GET /twitadvices/1 or /twitadvices/1.json
  def show
  end

  # GET /twitadvices/new
  def new
    @twitadvice = Twitadvice.new
  end

  # GET /twitadvices/1/edit
  def edit
  end

  # POST /twitadvices or /twitadvices.json
  def create
    @twitadvice = Twitadvice.new(twitadvice_params)

    respond_to do |format|
      if @twitadvice.save
        format.html { redirect_to twitadvice_url(@twitadvice), notice: "Twitadvice was successfully created." }
        format.json { render :show, status: :created, location: @twitadvice }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @twitadvice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twitadvices/1 or /twitadvices/1.json
  def update
    respond_to do |format|
      if @twitadvice.update(twitadvice_params)
        format.html { redirect_to twitadvice_url(@twitadvice), notice: "Twitadvice was successfully updated." }
        format.json { render :show, status: :ok, location: @twitadvice }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @twitadvice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twitadvices/1 or /twitadvices/1.json
  def destroy
    @twitadvice.destroy

    respond_to do |format|
      format.html { redirect_to twitadvices_url, notice: "Twitadvice was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twitadvice
      @twitadvice = Twitadvice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def twitadvice_params
      params.require(:twitadvice).permit(:advice, :user_id)
    end
end
