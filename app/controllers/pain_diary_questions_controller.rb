class PainDiaryQuestionsController < ApplicationController
  def index
    matching_pain_diary_questions = PainDiaryQuestion.all

    @list_of_pain_diary_questions = matching_pain_diary_questions.order({ :id => :asc })

    render({ :template => "pain_diary_questions/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_pain_diary_questions = PainDiaryQuestion.where({ :id => the_id })

    @the_pain_diary_question = matching_pain_diary_questions.at(0)

    render({ :template => "pain_diary_questions/show.html.erb" })
  end

  def create
    the_pain_diary_question = PainDiaryQuestion.new
    the_pain_diary_question.category = params.fetch("query_category")
    the_pain_diary_question.question = params.fetch("query_question")
    the_pain_diary_question.input_type = params.fetch("query_input_type")
    the_pain_diary_question.answer_options = params.fetch("query_answer_options")

    if the_pain_diary_question.valid?
      the_pain_diary_question.save
      redirect_to("/pain_diary_questions", { :notice => "Pain diary question created successfully." })
    else
      redirect_to("/pain_diary_questions", { :notice => "Pain diary question failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_pain_diary_question = PainDiaryQuestion.where({ :id => the_id }).at(0)

    the_pain_diary_question.category = params.fetch("query_category")
    the_pain_diary_question.question = params.fetch("query_question")
    the_pain_diary_question.input_type = params.fetch("query_input_type")
    the_pain_diary_question.answer_options = params.fetch("query_answer_options")

    if the_pain_diary_question.valid?
      the_pain_diary_question.save
      redirect_to("/pain_diary_questions/#{the_pain_diary_question.id}", { :notice => "Pain diary question updated successfully."} )
    else
      redirect_to("/pain_diary_questions/#{the_pain_diary_question.id}", { :alert => "Pain diary question failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_pain_diary_question = PainDiaryQuestion.where({ :id => the_id }).at(0)

    the_pain_diary_question.destroy

    redirect_to("/pain_diary_questions", { :notice => "Pain diary question deleted successfully."} )
  end
end
