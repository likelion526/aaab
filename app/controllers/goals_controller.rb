class GoalsController < ApplicationController
  def choice
    
    @selector = params[:selector] # [1,3,4]
    
    if current_user.goals.present?
      current_user.goals.destroy_all
      
    end 
  
    if @selector.present? 
  
      
      @selector.each do |select|
      current_user.goals.create(habit_id: select)
      end 
      redirect_to "/goals/receiver"
    else  redirect_to "/goals/inputneed"  
    end
  end

  
  
  
    # @selector = params[:selector] 
    
    # if current_user.goals.present?
    #   current_user.goals.destroy_all
    # end
    
    # @selector.each do |select|
    #   current_user.goals.create(habit_id: select)
    # end if @selector.present?
    
    # redirect_to "/goals/receiver"
  def inputneed
    
  end

  def receiver
  end
end
