class JancodesController < ApplicationController
  before_action :set_jancode, only: %i[ show edit update destroy ]

  # GET /jancodes or /jancodes.json
  def index
    @jancodes = Jancode.all
  end

  # GET /jancodes/1 or /jancodes/1.json
  def show
  end

  # GET /jancodes/new
  def new
    @jancode = Jancode.new
  end

  # GET /jancodes/1/edit
  def edit
  end

  # POST /jancodes or /jancodes.json
  def create
    @jancode = Jancode.new(jancode_params)

    respond_to do |format|
      if @jancode.save
        format.html { redirect_to @jancode, notice: "Jancode was successfully created." }
        format.json { render :show, status: :created, location: @jancode }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @jancode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jancodes/1 or /jancodes/1.json
  def update
    respond_to do |format|
      if @jancode.update(jancode_params)
        format.html { redirect_to @jancode, notice: "Jancode was successfully updated." }
        format.json { render :show, status: :ok, location: @jancode }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jancode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jancodes/1 or /jancodes/1.json
  def destroy
    @jancode.destroy
    respond_to do |format|
      format.html { redirect_to jancodes_url, notice: "Jancode was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jancode
      @jancode = Jancode.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jancode_params
      params.require(:jancode).permit(:jancode, :categoryno, :item)
    end
end
