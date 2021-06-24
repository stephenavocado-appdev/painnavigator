class GoalsController < ApplicationController
  def index
    matching_goals = Goal.all

    @list_of_goals = matching_goals.order({ :created_at => :desc })

    render({ :template => "goals/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_goals = Goal.where({ :id => the_id })

    @the_goal = matching_goals.at(0)

    render({ :template => "goals/show.html.erb" })
  end

  def create
    the_goal = Goal.new
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
      redirect_to("/goals", { :notice => "Goal created successfully." })
    else
      redirect_to("/goals", { :notice => "Goal failed to create successfully." })
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
