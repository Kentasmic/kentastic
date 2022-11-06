class RailsTipsController < ApplicationController
  before_action :set_rails_tip, only: %i[ show edit update destroy ]

  # GET /rails_tips
  def index
    @rails_tips = RailsTip.all
  end

  # GET /rails_tips/1
  def show
  end

  # GET /rails_tips/new
  def new
    @rails_tip = RailsTip.new
  end

  # GET /rails_tips/1/edit
  def edit
  end

  # POST /rails_tips
  def create
    @rails_tip = RailsTip.new(rails_tip_params)

    if @rails_tip.save
      redirect_to @rails_tip, notice: "Rails tip was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rails_tips/1
  def update
    if @rails_tip.update(rails_tip_params)
      redirect_to @rails_tip, notice: "Rails tip was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /rails_tips/1
  def destroy
    @rails_tip.destroy
    redirect_to rails_tips_url, notice: "Rails tip was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rails_tip
      @rails_tip = RailsTip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rails_tip_params
      params.require(:rails_tip).permit(:title, :content)
    end
end
