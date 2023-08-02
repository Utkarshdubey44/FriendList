class PersonalDetailsController < ApplicationController
  before_action :set_personal_detail, only: %i[ show edit update destroy ]


  def index
    @personal_details = PersonalDetail.all
  end

  
  def show
  end


  def new
    @personal_detail = PersonalDetail.new
  end


  def edit
  end

  def create
    @personal_detail = PersonalDetail.new(personal_detail_params)

    respond_to do |format|
      if @personal_detail.save
        format.html { redirect_to personal_detail_url(@personal_detail), notice: "Personal detail was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @personal_detail.update(personal_detail_params)
        format.html { redirect_to personal_detail_url(@personal_detail), notice: "Personal detail was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

 
  def destroy
    @personal_detail.destroy

    respond_to do |format|
      format.html { redirect_to personal_details_url, notice: "Personal detail was successfully deleted." }
    end
  end

  private

    def set_personal_detail
      @personal_detail = PersonalDetail.find(params[:id])
    end

    def personal_detail_params
      params.require(:personal_detail).permit(:name, :gender, :phone, :description)
    end
  end
