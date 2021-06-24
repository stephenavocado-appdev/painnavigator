class GoalCategoriesController < ApplicationController
  def index
    matching_goal_categories = GoalCategory.all

    @list_of_goal_categories = matching_goal_categories.order({ :created_at => :desc })

    render({ :template => "goal_categories/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_goal_categories = GoalCategory.where({ :id => the_id })

    @the_goal_category = matching_goal_categories.at(0)

    render({ :template => "goal_categories/show.html.erb" })
  end

  def create
    the_goal_category = GoalCategory.new
    the_goal_category.category = params.fetch("query_category")
    the_goal_category.unit = params.fetch("query_unit")
    the_goal_category.icon = params.fetch("query_icon")

    if the_goal_category.valid?
      the_goal_category.save
      redirect_to("/goal_categories", { :notice => "Goal category created successfully." })
    else
      redirect_to("/goal_categories", { :notice => "Goal category failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_goal_category = GoalCategory.where({ :id => the_id }).at(0)

    the_goal_category.category = params.fetch("query_category")
    the_goal_category.unit = params.fetch("query_unit")
    the_goal_category.icon = params.fetch("query_icon")

    if the_goal_category.valid?
      the_goal_category.save
      redirect_to("/goal_categories/#{the_goal_category.id}", { :notice => "Goal category updated successfully."} )
    else
      redirect_to("/goal_categories/#{the_goal_category.id}", { :alert => "Goal category failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_goal_category = GoalCategory.where({ :id => the_id }).at(0)

    the_goal_category.destroy

    redirect_to("/goal_categories", { :notice => "Goal category deleted successfully."} )
  end
end
