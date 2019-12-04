class HabitsController < ApplicationController
  def create
    @comment = Habit.new
    @comment.body = params[:body]
    @comment.standard = params[:standard]
    @comment.field_id = params[:field_id]
    @comment.save
    
    redirect_to request.referrer
  end

  def destroy
    @field = Field.find(params[:id])
    @comment = @field.comments
    @comment.find(params[:id]).destroy
    
    redirect_to request.referrer
  end

  def update
  end
end
