class BeadsController < ApplicationController

  def new
    @bead = Bead.new
  end

  def index
    @bead = Bead.order("RANDOM()").first
  end

  def create
    @bead = Bead.create(bead_params)
    redirect_to root_path
  end

  private 

  def bead_params
    params.require(:bead).permit(:message)
  end

end
