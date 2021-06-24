class NewUserSurveysController < ApplicationController
  def index
    matching_new_user_surveys = NewUserSurvey.all

    @list_of_new_user_surveys = matching_new_user_surveys.order({ :created_at => :desc })

    render({ :template => "new_user_surveys/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_new_user_surveys = NewUserSurvey.where({ :id => the_id })

    @the_new_user_survey = matching_new_user_surveys.at(0)

    render({ :template => "new_user_surveys/show.html.erb" })
  end

  def create
    the_new_user_survey = NewUserSurvey.new
    the_new_user_survey.user_id = params.fetch("query_user_id")
    the_new_user_survey.q_1 = params.fetch("query_q_1")
    the_new_user_survey.q_2 = params.fetch("query_q_2")
    the_new_user_survey.q_3 = params.fetch("query_q_3")
    the_new_user_survey.q_4 = params.fetch("query_q_4")
    the_new_user_survey.q_5 = params.fetch("query_q_5")
    the_new_user_survey.q_6 = params.fetch("query_q_6")
    the_new_user_survey.q_7 = params.fetch("query_q_7")
    the_new_user_survey.q_8 = params.fetch("query_q_8")
    the_new_user_survey.q_9 = params.fetch("query_q_9")
    the_new_user_survey.q_10 = params.fetch("query_q_10")
    the_new_user_survey.q_11 = params.fetch("query_q_11")
    the_new_user_survey.q_12 = params.fetch("query_q_12")
    the_new_user_survey.q_13 = params.fetch("query_q_13")
    the_new_user_survey.q_14 = params.fetch("query_q_14")
    the_new_user_survey.q_15 = params.fetch("query_q_15")
    the_new_user_survey.q_16 = params.fetch("query_q_16")
    the_new_user_survey.q_17 = params.fetch("query_q_17")
    the_new_user_survey.q_18 = params.fetch("query_q_18")
    the_new_user_survey.q_19 = params.fetch("query_q_19")
    the_new_user_survey.q_20 = params.fetch("query_q_20")
    the_new_user_survey.q_21 = params.fetch("query_q_21")
    the_new_user_survey.q_22 = params.fetch("query_q_22")
    the_new_user_survey.q_23 = params.fetch("query_q_23")

    if the_new_user_survey.valid?
      the_new_user_survey.save
      redirect_to("/new_user_surveys", { :notice => "New user survey created successfully." })
    else
      redirect_to("/new_user_surveys", { :notice => "New user survey failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_new_user_survey = NewUserSurvey.where({ :id => the_id }).at(0)

    the_new_user_survey.user_id = params.fetch("query_user_id")
    the_new_user_survey.q_1 = params.fetch("query_q_1")
    the_new_user_survey.q_2 = params.fetch("query_q_2")
    the_new_user_survey.q_3 = params.fetch("query_q_3")
    the_new_user_survey.q_4 = params.fetch("query_q_4")
    the_new_user_survey.q_5 = params.fetch("query_q_5")
    the_new_user_survey.q_6 = params.fetch("query_q_6")
    the_new_user_survey.q_7 = params.fetch("query_q_7")
    the_new_user_survey.q_8 = params.fetch("query_q_8")
    the_new_user_survey.q_9 = params.fetch("query_q_9")
    the_new_user_survey.q_10 = params.fetch("query_q_10")
    the_new_user_survey.q_11 = params.fetch("query_q_11")
    the_new_user_survey.q_12 = params.fetch("query_q_12")
    the_new_user_survey.q_13 = params.fetch("query_q_13")
    the_new_user_survey.q_14 = params.fetch("query_q_14")
    the_new_user_survey.q_15 = params.fetch("query_q_15")
    the_new_user_survey.q_16 = params.fetch("query_q_16")
    the_new_user_survey.q_17 = params.fetch("query_q_17")
    the_new_user_survey.q_18 = params.fetch("query_q_18")
    the_new_user_survey.q_19 = params.fetch("query_q_19")
    the_new_user_survey.q_20 = params.fetch("query_q_20")
    the_new_user_survey.q_21 = params.fetch("query_q_21")
    the_new_user_survey.q_22 = params.fetch("query_q_22")
    the_new_user_survey.q_23 = params.fetch("query_q_23")

    if the_new_user_survey.valid?
      the_new_user_survey.save
      redirect_to("/new_user_surveys/#{the_new_user_survey.id}", { :notice => "New user survey updated successfully."} )
    else
      redirect_to("/new_user_surveys/#{the_new_user_survey.id}", { :alert => "New user survey failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_new_user_survey = NewUserSurvey.where({ :id => the_id }).at(0)

    the_new_user_survey.destroy

    redirect_to("/new_user_surveys", { :notice => "New user survey deleted successfully."} )
  end
end
