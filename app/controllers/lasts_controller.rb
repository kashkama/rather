class LastsController < ApplicationController
  # before_action :set_last, only: [:show, :edit, :update, :destroy]

  def index
    @lasts = Last.all
  end

  def show
    @last = Last.find(params[:id])
  end

  def new
    @last = Last.new
  end

  def edit
    @last = Last.find(params[:id])
  end

  def create
    @last = Last.new(last_params)
    if @last.save
      redirect_to lasts_path, notice: 'Last was successfully created.'
      respond_to do |format|
        format.html { redirect_to lasts_path}
        format.js
      end
    end
  end

  def update
    @last = Last.find(params[:id])
    if @last.update(last_params)
      redirect_to lasts_path
    else
      render :edit
    end
  end

  def destroy
    @last = Last.find(params[:id])
    @last.destroy
    redirect_to lasts_path, notice: 'Last was successfully destroyed.'
  end

  private
    def last_params
      params.require(:last).permit(:question2)
    end
end
