class LineidsController < ApplicationController
  before_action :set_lineid, only: %i[ show edit update destroy ]

  # GET /lineids or /lineids.json
  def index
    @lineids = Lineid.all
  end

  # GET /lineids/1 or /lineids/1.json
  def show
  end

  # GET /lineids/new
  def new
    @lineid = Lineid.new
  end

  # GET /lineids/1/edit
  def edit
  end

  # POST /lineids or /lineids.json
  def create
    @lineid = Lineid.new(lineid_params)

    respond_to do |format|
      if @lineid.save
        format.html { redirect_to @lineid, notice: "Lineid was successfully created." }
        format.json { render :show, status: :created, location: @lineid }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lineid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lineids/1 or /lineids/1.json
  def update
    respond_to do |format|
      if @lineid.update(lineid_params)
        format.html { redirect_to @lineid, notice: "Lineid was successfully updated." }
        format.json { render :show, status: :ok, location: @lineid }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lineid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lineids/1 or /lineids/1.json
  def destroy
    @lineid.destroy
    respond_to do |format|
      format.html { redirect_to lineids_url, notice: "Lineid was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lineid
      @lineid = Lineid.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lineid_params
      params.require(:lineid).permit(:line_id, :flag)
    end
end
