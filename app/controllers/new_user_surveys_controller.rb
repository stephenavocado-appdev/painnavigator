class NewUserSurveysController < ApplicationController
  def q_1
    matching_questions = Question.all
    @list_of_questions = matching_questions.order({ :id => :asc })
    @the_question = @list_of_questions.at(0)

    render({ :template => "new_user_surveys/q_1.html.erb" })
  end

  def q_2
    matching_questions = Question.all
    @list_of_questions = matching_questions.order({ :id => :asc })
    @the_question = @list_of_questions.at(1)

    render({ :template => "new_user_surveys/q_2.html.erb" })
  end

  def q_3
    matching_questions = Question.all
    @list_of_questions = matching_questions.order({ :id => :asc })
    @the_question = @list_of_questions.at(2)

    render({ :template => "new_user_surveys/q_3.html.erb" })
  end

  def q_4
    matching_questions = Question.all
    @list_of_questions = matching_questions.order({ :id => :asc })
    @the_question = @list_of_questions.at(3)

    render({ :template => "new_user_surveys/q_4.html.erb" })
  end

  def q_5
    matching_questions = Question.all
    @list_of_questions = matching_questions.order({ :id => :asc })
    @the_question = @list_of_questions.at(4)

    render({ :template => "new_user_surveys/q_5.html.erb" })
  end

  def q_6
    matching_questions = Question.all
    @list_of_questions = matching_questions.order({ :id => :asc })
    @the_question = @list_of_questions.at(5)

    render({ :template => "new_user_surveys/q_6.html.erb" })
  end

  def q_7
    matching_questions = Question.all
    @list_of_questions = matching_questions.order({ :id => :asc })
    @the_question = @list_of_questions.at(6)

    render({ :template => "new_user_surveys/q_7.html.erb" })
  end

  def q_8
    matching_questions = Question.all
    @list_of_questions = matching_questions.order({ :id => :asc })
    @the_question = @list_of_questions.at(7)

    render({ :template => "new_user_surveys/q_8.html.erb" })
  end

  def q_9
    matching_questions = Question.all
    @list_of_questions = matching_questions.order({ :id => :asc })
    @the_question = @list_of_questions.at(8)

    render({ :template => "new_user_surveys/q_9.html.erb" })
  end

  def q_10
    matching_questions = Question.all
    @list_of_questions = matching_questions.order({ :id => :asc })
    @the_question = @list_of_questions.at(9)

    render({ :template => "new_user_surveys/q_10.html.erb" })
  end

  def q_11
    matching_questions = Question.all
    @list_of_questions = matching_questions.order({ :id => :asc })
    @the_question = @list_of_questions.at(10)

    render({ :template => "new_user_surveys/q_11.html.erb" })
  end

  def q_12
    matching_questions = Question.all
    @list_of_questions = matching_questions.order({ :id => :asc })
    @the_question = @list_of_questions.at(11)

    render({ :template => "new_user_surveys/q_12.html.erb" })
  end

  def q_13
    matching_questions = Question.all
    @list_of_questions = matching_questions.order({ :id => :asc })
    @the_question = @list_of_questions.at(12)

    render({ :template => "new_user_surveys/q_13.html.erb" })
  end

  def q_14
    matching_questions = Question.all
    @list_of_questions = matching_questions.order({ :id => :asc })
    @the_question = @list_of_questions.at(13)

    render({ :template => "new_user_surveys/q_14.html.erb" })
  end
  
  def q_15
    matching_questions = Question.all
    @list_of_questions = matching_questions.order({ :id => :asc })
    @the_question = @list_of_questions.at(14)

    render({ :template => "new_user_surveys/q_15.html.erb" })
  end

  def q_16
    matching_questions = Question.all
    @list_of_questions = matching_questions.order({ :id => :asc })
    @the_question = @list_of_questions.at(15)

    render({ :template => "new_user_surveys/q_16.html.erb" })
  end

  def q_17
    matching_questions = Question.all
    @list_of_questions = matching_questions.order({ :id => :asc })
    @the_question = @list_of_questions.at(16)

    render({ :template => "new_user_surveys/q_17.html.erb" })
  end

  def q_18
    matching_questions = Question.all
    @list_of_questions = matching_questions.order({ :id => :asc })
    @the_question = @list_of_questions.at(17)

    render({ :template => "new_user_surveys/q_18.html.erb" })
  end

  def q_19
    matching_questions = Question.all
    @list_of_questions = matching_questions.order({ :id => :asc })
    @the_question = @list_of_questions.at(18)

    render({ :template => "new_user_surveys/q_19.html.erb" })
  end

  def q_20
    matching_questions = Question.all
    @list_of_questions = matching_questions.order({ :id => :asc })
    @the_question = @list_of_questions.at(19)

    render({ :template => "new_user_surveys/q_20.html.erb" })
  end
  
  def q_21
    matching_questions = Question.all
    @list_of_questions = matching_questions.order({ :id => :asc })
    @the_question = @list_of_questions.at(20)

    render({ :template => "new_user_surveys/q_21.html.erb" })
  end
  
  def q_22
    matching_questions = Question.all
    @list_of_questions = matching_questions.order({ :id => :asc })
    @the_question = @list_of_questions.at(21)

    render({ :template => "new_user_surveys/q_22.html.erb" })
  end

  def q_23
    matching_questions = Question.all
    @list_of_questions = matching_questions.order({ :id => :asc })
    @the_question = @list_of_questions.at(22)

    render({ :template => "new_user_surveys/q_23.html.erb" })
  end
  
  def index
    matching_questions = Question.all

    @list_of_questions = matching_questions.order({ :id => :asc })

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
