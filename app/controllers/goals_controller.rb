class GoalsController < ApplicationController
  def choice
    
    if current_user.fields.present?
      current_user.fields.destroy_all
    end
    
    @a = params[:field]
    current_user.field.create(body: @a)
  
  
    @selector = params[:selector] 
    
    if current_user.goals.present?
      current_user.goals.destroy_all
    end
    
    @selector.each do |select|
      current_user.goals.create(habit_id: select)
    end if @selector.present?
    
    redirect_to "/goals/receiver"
    
  end

  def receiver
  end
end
