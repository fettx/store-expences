class EnteredsController < ApplicationController
  before_action :set_entered, only: [:show, :edit, :update, :destroy]

  # GET /entereds
  # GET /entereds.json
  def index
    @entereds = Entered.all
  end

  # GET /entereds/1
  # GET /entereds/1.json
  def show
  end

  # GET /entereds/new
  def new
    @entered = Entered.new
  end

  # GET /entereds/1/edit
  def edit
  end

  # POST /entereds
  # POST /entereds.json
  def create
    @entered = Entered.new(entered_params)

    respond_to do |format|
      if @entered.save
        format.html { redirect_to @entered, notice: 'Entered was successfully created.' }
        format.json { render :show, status: :created, location: @entered }
      else
        format.html { render :new }
        format.json { render json: @entered.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entereds/1
  # PATCH/PUT /entereds/1.json
  def update
    respond_to do |format|
      if @entered.update(entered_params)
        format.html { redirect_to @entered, notice: 'Entered was successfully updated.' }
        format.json { render :show, status: :ok, location: @entered }
      else
        format.html { render :edit }
        format.json { render json: @entered.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entereds/1
  # DELETE /entereds/1.json
  def destroy
    @entered.destroy
    respond_to do |format|
      format.html { redirect_to entereds_url, notice: 'Entered was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entered
      @entered = Entered.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entered_params
      params.require(:entered).permit(:name, :price, :create_at)
    end
end
