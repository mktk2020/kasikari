class LendingitemsController < ApplicationController
  before_action :set_lendingitem, only: %i[ show edit update destroy ]
  before_action :set_q, only: [:index, :search]

  # GET /lendingitems or /lendingitems.json
  def index
    @lendingitems = Lendingitem.all
  end

  # GET /lendingitems/1 or /lendingitems/1.json
  def show
  end

  # GET /lendingitems/new
  def new
    @lendingitem = Lendingitem.new
    @category = Category.all
  end

  # GET /lendingitems/1/edit
  def edit
  end

  # POST /lendingitems or /lendingitems.json
  def create
    @lendingitem = Lendingitem.new(lendingitem_params)
    p @lendingitem
    p lendingitem_params
    respond_to do |format|
      if @lendingitem.save
        format.html { redirect_to '/lendingitems', notice: "Lendingitem was successfully created." }
        format.json { render :show, status: :created, location: @lendingitem }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lendingitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lendingitems/1 or /lendingitems/1.json
  def update
    respond_to do |format|
      if @lendingitem.update(lendingitem_params)
        format.html { redirect_to @lendingitem, notice: "Lendingitem was successfully updated." }
        format.json { render :show, status: :ok, location: @lendingitem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lendingitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lendingitems/1 or /lendingitems/1.json
  def destroy
    @lendingitem.destroy
    respond_to do |format|
      format.html { redirect_to lendingitems_url, notice: "登録商品を削除しました." }
      format.json { head :no_content }
    end
  end

  def search
    @results = @q.result
  end
  #商品検索
  def kensaku
    @q = Lendingitem.ransack(params[:q])
  end

  #確認画面
  def kakunin
    @lendingitem = Lendingitem.find(params[:id])
    @num = params['num']
  end
  private

  def set_q
    @q = Lendingitem.ransack(params[:q])
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_lendingitem
      @lendingitem = Lendingitem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lendingitem_params
      params.require(:lendingitem).permit(:jancode, :item, :category, :image_name, :price, :days, :memo)
    end
end
