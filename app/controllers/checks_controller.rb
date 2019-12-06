class ChecksController < ApplicationController
  before_action :authenticate_user!, only: [:create]
 
  def index
  @week_count = current_user.checks.where(check_date: [Time.current-7.day..Time.current]).count 
  @weekgoal_count = current_user.goals.count * 7
  
  @week_percent = (@week_count.to_f / @weekgoal_count)
  @daygoal_count = current_user.goals.count
  end
  
  
  def monthly
  @daygoal_count = current_user.goals.count
  @week_count = current_user.checks.where(check_date: [Time.current-7.day..Time.current]).count 
  @weekgoal_count = current_user.goals.count * 7
  
  @week_percent = (@week_count.to_f / @weekgoal_count)
  end 
  
  # # def monthly
  # @day_count = current_user.checks.where(check_date: date).count 
  # @daygoal_count = current_user.answers.count
  
  # @day_percent = (@day_count.to_f / @daygoal_count)
  # end

  def choice
    select_goals = params[:selector_a] 
    
    if current_user.checks.where(check_date: Time.current).present?
      current_user.checks.where(check_date: Time.current).destroy_all
    end
    
    if select_goals.present?
        select_goals.each do |goal|
        data = current_user.checks.create(check_date: Time.current, user_id: current_user.id, goal_id: goal)
      end 
    end
  
    
    redirect_to "/checks/index"
  end

end
