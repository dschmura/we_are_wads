class QuirksController < ApplicationController
  before_action :set_quirk, only: %i[ show edit update destroy ]
  before_action :set_user
  
  # GET /quirks or /quirks.json
  def index
    @quirks = @user.quirks
  end

  # GET /quirks/1 or /quirks/1.json
  def show
  end

  # GET /quirks/new
  def new
    @quirk = @user.quirks.build
  end

  # GET /quirks/1/edit
  def edit
  end

  # POST /quirks or /quirks.json
  def create
    @quirk = @user.quirks.new(quirk_params)

    respond_to do |format|
      if @quirk.save
        format.html { redirect_to user_path(@user), notice: "Quirk was successfully created." }
        format.json { render :show, status: :created, location: @quirk }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quirk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quirks/1 or /quirks/1.json
  def update
    respond_to do |format|
      if @quirk.update(quirk_params)
        format.html { redirect_to user_quirk_path(@quirk), notice: "Quirk was successfully updated." }
        format.json { render :show, status: :ok, location: @quirk }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quirk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quirks/1 or /quirks/1.json
  def destroy
    @quirk.destroy

    respond_to do |format|
      format.html { redirect_to quirks_url, notice: "Quirk was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quirk
      @quirk = @user.quirks.find(params[:id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    # Only allow a list of trusted parameters through.
    def quirk_params
      params.require(:quirk).permit(:title, :content, :user_id)
    end
end
