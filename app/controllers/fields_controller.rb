class FieldsController < ApplicationController
  # before_action :set_field, only: [:show, :edit, :update]
  
  def choice
    @fields= Field.all
  end

  def index
    @fields = Field.all
  end

  def main
  end

  def new
  end

  def receive
    @selected = params[:selector]
  end

  
  def create
    @field = Field.new 
    @field.body = params[:body]
    @field.save
    
    redirect_to "/fields/index"
  end
  
  def update
    @field = Field.find(params[:id])
      @field.body = params[:body]
      @field.save
      
      redirect_to "/fields/index"
  end
  
  def show
    @field = Field.find(params[:id])
    @habit = Habit.new
  end
  
  def edit
    @field = Field.find(params[:id])
  end
  
  def destroy
    @field = Field.find(params[:id])
    @field.destroy
    
    redirect_to "/fields/index"
  end
  
  # private
  #   def set_field
  #     @field = Field.find(params[:id])
  #   end
  
end
