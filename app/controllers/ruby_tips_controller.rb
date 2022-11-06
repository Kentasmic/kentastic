class RubyTipsController < ApplicationController
  before_action :set_ruby_tip, only: %i[ show edit update destroy ]

  # GET /ruby_tips
  def index
    @ruby_tips = RubyTip.all
  end

  # GET /ruby_tips/1
  def show
  end

  # GET /ruby_tips/new
  def new
    @ruby_tip = RubyTip.new
  end

  # GET /ruby_tips/1/edit
  def edit
  end

  # POST /ruby_tips
  def create
    @ruby_tip = RubyTip.new(ruby_tip_params)

    if @ruby_tip.save
      redirect_to @ruby_tip, notice: "Ruby tip was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ruby_tips/1
  def update
    if @ruby_tip.update(ruby_tip_params)
      redirect_to @ruby_tip, notice: "Ruby tip was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /ruby_tips/1
  def destroy
    @ruby_tip.destroy
    redirect_to ruby_tips_url, notice: "Ruby tip was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ruby_tip
      @ruby_tip = RubyTip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ruby_tip_params
      params.require(:ruby_tip).permit(:title, :content)
    end
end
