class FieldsController < ApplicationController
   before_action :set_field, only: [:show, :edit, :update]
  
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
  end

  
  def create
    @field = Field.new 
    @field.body = params[:body]
    @field.save
    
    redirect_to "/fields/index"
  end
  
  def update
      @field.body = params[:body]
      @field.save
      
      redirect_to "/fields/index"
  end
  
  def show
    @habit = Habit.new
  end
  
  def edit
  end
  
  private
    def set_field
      @field = Field.find(params[:id])
    end
  
end
