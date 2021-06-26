class GoalsController < ApplicationController
  def selectcategory
    matching_goal_categories = GoalCategory.all

    @list_of_goal_categories = matching_goal_categories.order({ :created_at => :asc })

    render({ :template => "goals/selectcategory.html.erb" })
  end

  def creategoal
    the_id = params.fetch("category")
    @category = GoalCategory.where({ :id => the_id }).at(0)

    render({ :template => "goals/creategoal.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_goals = Goal.where({ :id => the_id })

    @the_goal = matching_goals.at(0)

    render({ :template => "goals/show.html.erb" })
  end

  def create
    the_goal = Goal.new
    #the_goal.name = params.fetch("query_name")
    the_goal.category = params.fetch("query_category")
    the_goal.user_id = params.fetch("query_user_id")
    the_goal.user_goal = params.fetch("query_user_goal")
    #the_goal.user_result = params.fetch("query_user_result")
    the_goal.target_date = params.fetch("query_target_date")
    the_goal.incremental_steps = params.fetch("query_incremental_steps")
    the_goal.reward = params.fetch("query_reward")
    #the_goal.status = params.fetch("query_status")

    if the_goal.valid?
      the_goal.save
      redirect_to("/dashboard")
    else
      redirect_to("/dashbaord", { :notice => "Goal failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_goal = Goal.where({ :id => the_id }).at(0)

    the_goal.name = params.fetch("query_name")
    the_goal.category = params.fetch("query_category")
    the_goal.user_id = params.fetch("query_user_id")
    the_goal.user_goal = params.fetch("query_user_goal")
    the_goal.user_result = params.fetch("query_user_result")
    the_goal.target_date = params.fetch("query_target_date")
    the_goal.incremental_steps = params.fetch("query_incremental_steps")
    the_goal.reward = params.fetch("query_reward")
    the_goal.status = params.fetch("query_status")

    if the_goal.valid?
      the_goal.save
      redirect_to("/goals/#{the_goal.id}", { :notice => "Goal updated successfully."} )
    else
      redirect_to("/goals/#{the_goal.id}", { :alert => "Goal failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_goal = Goal.where({ :id => the_id }).at(0)

    the_goal.destroy

    redirect_to("/goals", { :notice => "Goal deleted successfully."} )
  end
end
