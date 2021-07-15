class LessonsController < ApplicationController
  def index
    matching_lessons = Lesson.all

    @list_of_lessons = matching_lessons.order({ :created_at => :desc })

    render({ :template => "lessons/index.html.erb" })
  end

  def markcomplete
    lesson_id = params.fetch("lesson_id").to_i
    next_lesson_id = lesson_id+1

    the_lesson = Lesson.where({ :id => lesson_id }).at(0)
    the_lesson.status = "Completed"
    the_lesson.save
    
    render({ :template => "lessons/congratulations" })
  end

  def show
    the_id = params.fetch("path_id").to_i
    previous_id = the_id-1

    matching_lessons = Lesson.where({ :id => the_id })
    previous_lesson = Lesson.where({ :id => previous_id })

    @the_lesson = matching_lessons.at(0)
    @the_lesson.status = "In Progress"
    @the_lesson.save

    @previous_lesson = previous_lesson.at(0)

    if @the_lesson.name != Video.all.first.display_name
      @previous_lesson.status = "Completed"
      @previous_lesson.save
    end

    render({ :template => "lessons/show.html.erb" })
  end

  def first
    the_id = params.fetch("path_id")

    matching_lessons = Lesson.where({ :id => the_id })

    @the_lesson = matching_lessons.at(0)

    render({ :template => "lessons/show.html.erb" })
  end

  def create
    the_lesson = Lesson.new
    the_lesson.course_id = params.fetch("query_course_id")
    the_lesson.status = params.fetch("query_status")
    the_lesson.name = params.fetch("query_name")
    the_lesson.video_id = params.fetch("query_video_id")
    the_lesson.user_id = params.fetch("query_user_id")

    if the_lesson.valid?
      the_lesson.save
      redirect_to("/lessons", { :notice => "Lesson created successfully." })
    else
      redirect_to("/lessons", { :notice => "Lesson failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_lesson = Lesson.where({ :id => the_id }).at(0)

    the_lesson.course_id = params.fetch("query_course_id")
    the_lesson.status = params.fetch("query_status")
    the_lesson.name = params.fetch("query_name")
    the_lesson.video_id = params.fetch("query_video_id")
    the_lesson.user_id = params.fetch("query_user_id")

    if the_lesson.valid?
      the_lesson.save
      redirect_to("/lessons/#{the_lesson.id}", { :notice => "Lesson updated successfully."} )
    else
      redirect_to("/lessons/#{the_lesson.id}", { :alert => "Lesson failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_lesson = Lesson.where({ :id => the_id }).at(0)

    the_lesson.destroy

    redirect_to("/lessons", { :notice => "Lesson deleted successfully."} )
  end
end
