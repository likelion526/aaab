class GoalsController < ApplicationController
def choice
    
    # @a = Identity.where(user_id: current_user.id)
    # @a.each do |a| 
    #   a.body = params[:identity]
    #   a.save
    # end
    
    if current_user.identities.present?
      current_user.identities.first.update(body: params[:identity])
    else
      current_user.identities.create(body: params[:identity])
    end
    
    
    @selector = params[:selector] # [1,3,4]
    
  
    if current_user.goals.present?
      current_user.goals.destroy_all
      
    end 
  
    if @selector.present? 
      @selector.each do |select|
        current_user.goals.create(habit_id: select)
      end 
      redirect_to "/goals/receiver"
    else  
      redirect_to "/goals/inputneed"  
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
