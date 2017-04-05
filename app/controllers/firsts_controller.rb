class FirstsController < ApplicationController
  # before_action :set_first, only: [:show, :edit, :update, :destroy]

  def index
    @firsts = First.all
  end

  def show
    @first = First.find(params[:id])
  end

  def new
    @first = First.new
  end

  def edit
    @first = First.find(params[:id])
  end

  def create
    @first = First.new(first_params)
    if @first.save
      redirect_to firsts_path, notice: 'First was successfully created.'
      respond_to do |format|
        format.html { redirect_to firsts_path}
        format.js
      end
    end
  end

  def update
    @first = First.find(params[:id])
    if @first.update(first_params)
      redirect_to firsts_path
    else
      render :edit
    end
  end

  def destroy
    @first = First.find(params[:id])
    @first.destroy
    redirect_to firsts_url, notice: 'First was successfully destroyed.'
  end

  private
    def first_params
      params.require(:first).permit(:question1)
    end
end
