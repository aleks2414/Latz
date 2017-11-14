class AnwsersController < ApplicationController
  before_action :set_anwser, only: [:show, :edit, :update, :destroy]

  # GET /anwsers
  # GET /anwsers.json
  def index
    @anwsers = Anwser.all
  end

  # GET /anwsers/1
  # GET /anwsers/1.json
  def show
  end

  # GET /anwsers/new
  def new
    @anwser = Anwser.new
  end

  # GET /anwsers/1/edit
  def edit
  end

  # POST /anwsers
  # POST /anwsers.json
  def create
    @anwser = Anwser.new(anwser_params)

    respond_to do |format|
      if @anwser.save
        format.html { redirect_to @anwser, notice: 'Anwser was successfully created.' }
        format.json { render :show, status: :created, location: @anwser }
      else
        format.html { render :new }
        format.json { render json: @anwser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anwsers/1
  # PATCH/PUT /anwsers/1.json
  def update
    respond_to do |format|
      if @anwser.update(anwser_params)
        format.html { redirect_to @anwser, notice: 'Anwser was successfully updated.' }
        format.json { render :show, status: :ok, location: @anwser }
      else
        format.html { render :edit }
        format.json { render json: @anwser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anwsers/1
  # DELETE /anwsers/1.json
  def destroy
    @anwser.destroy
    respond_to do |format|
      format.html { redirect_to anwsers_url, notice: 'Anwser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anwser
      @anwser = Anwser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anwser_params
      params.require(:anwser).permit(:user_id, :question_id, :content)
    end
end
