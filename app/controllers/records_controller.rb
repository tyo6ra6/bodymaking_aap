class RecordsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  before_action :set_record, only: [:edit, :show, :update, :destroy]

  def index
    @records = Record.order("created_at DESC")
  end


  def new
    @record = Record.new
  end

  def create
   
    @record = Record.new(record_params)
  
    if @record.save
      redirect_to root_path
    else
      render :new
    end
  end

 def show
 end 

 def edit
 end

 def update
  if @record.update(record_params)
    redirect_to record_path
  else
    render :edit
  end

 end




  private

  def record_params
    params.require(:record).permit(:days, :training_site_id, :training_event_id, :times_id, :set_count_id, :weight, :thoughts, :image).merge(user_id: current_user.id)
  end

  def set_record
    @record = Record.find(params[:id])
  end

end
