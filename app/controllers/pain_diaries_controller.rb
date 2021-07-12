class PainDiariesController < ApplicationController
  def index
    matching_pain_diaries = PainDiary.all

    @list_of_pain_diaries = matching_pain_diaries.order({ :created_at => :desc })

    render({ :template => "pain_diaries/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_pain_diaries = PainDiary.where({ :id => the_id })

    @the_pain_diary = matching_pain_diaries.at(0)

    render({ :template => "pain_diaries/show.html.erb" })
  end

  def pain_score
    the_pain_diary = PainDiary.new
    the_pain_diary.user_id = @current_user.id
    the_pain_diary.pain_score = params.fetch("query_pain_score")

    if the_pain_diary.valid?
      the_pain_diary.save
      redirect_to("/dashboard")
    else
      redirect_to("/dashboard", { :notice => "Pain diary failed to create successfully." })
    end
  end

  def activity_entry
    matching_pain_diary_questions = PainDiaryQuestion.all
    @q = matching_pain_diary_questions.at(1)

    render({ :template => "pain_diaries/question.html.erb" })
  end

  def mood_entry
    matching_pain_diary_questions = PainDiaryQuestion.all
    @q = matching_pain_diary_questions.at(2)

    render({ :template => "pain_diaries/question.html.erb" })
  end

  def social_entry
    matching_pain_diary_questions = PainDiaryQuestion.all
    @q = matching_pain_diary_questions.at(3)

    render({ :template => "pain_diaries/question.html.erb" })
  end

  def location_entry
    matching_pain_diary_questions = PainDiaryQuestion.all
    @q = matching_pain_diary_questions.at(4)

    render({ :template => "pain_diaries/question.html.erb" })
  end

  def medication_entry
    matching_pain_diary_questions = PainDiaryQuestion.all
    @q = matching_pain_diary_questions.at(5)

    render({ :template => "pain_diaries/question.html.erb" })
  end

  def coping_strategy
    matching_pain_diary_questions = PainDiaryQuestion.all
    @q = matching_pain_diary_questions.at(6)

    render({ :template => "pain_diaries/question.html.erb" })
  end

  def coping_strategy_score
    matching_pain_diary_questions = PainDiaryQuestion.all
    @q = matching_pain_diary_questions.at(7)

    render({ :template => "pain_diaries/question.html.erb" })
  end

  def additional_notes
    matching_pain_diary_questions = PainDiaryQuestion.all
    @q = matching_pain_diary_questions.at(8)

    render({ :template => "pain_diaries/question.html.erb" })
  end

  def pain_duration
    matching_pain_diary_questions = PainDiaryQuestion.all
    @q = matching_pain_diary_questions.at(9)

    render({ :template => "pain_diaries/question.html.erb" })
  end

  def pain_score_post
    matching_pain_diary_questions = PainDiaryQuestion.all
    @q = matching_pain_diary_questions.at(10)
    
    render({ :template => "pain_diaries/question.html.erb" })
  end

  def pain_score_post_answer
    redirect_to("/dashboard")
  end

  def update
    the_id = params.fetch("path_id")
    the_pain_diary = PainDiary.where({ :id => the_id }).at(0)

    the_pain_diary.user_id = params.fetch("query_user_id")
    the_pain_diary.pain_score = params.fetch("query_pain_score")
    the_pain_diary.activity_entry = params.fetch("query_activity_entry")
    the_pain_diary.mood_entry = params.fetch("query_mood_entry")
    the_pain_diary.social_entry = params.fetch("query_social_entry")
    the_pain_diary.location_entry = params.fetch("query_location_entry")
    the_pain_diary.medication_entry = params.fetch("query_medication_entry")
    the_pain_diary.coping_strategy = params.fetch("query_coping_strategy")
    the_pain_diary.coping_strategy_score = params.fetch("query_coping_strategy_score")
    the_pain_diary.additional_notes = params.fetch("query_additional_notes")
    the_pain_diary.pain_duration = params.fetch("query_pain_duration")
    the_pain_diary.pain_score_post = params.fetch("query_pain_score_post")

    if the_pain_diary.valid?
      the_pain_diary.save
      redirect_to("/pain_diaries/#{the_pain_diary.id}", { :notice => "Pain diary updated successfully."} )
    else
      redirect_to("/pain_diaries/#{the_pain_diary.id}", { :alert => "Pain diary failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_pain_diary = PainDiary.where({ :id => the_id }).at(0)

    the_pain_diary.destroy

    redirect_to("/pain_diaries", { :notice => "Pain diary deleted successfully."} )
  end
end
