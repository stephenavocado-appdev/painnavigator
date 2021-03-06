class UserAuthenticationController < ApplicationController
  # Uncomment this if you want to force users to sign in before any other actions
  # skip_before_action(:force_user_sign_in, { :only => [:sign_up_form, :create, :sign_in_form, :create_cookie] })

  def sign_in_form
    render({ :template => "user_authentication/sign_in.html.erb" })
  end

  def create_cookie
    user = User.where({ :email => params.fetch("query_email") }).first
    
    the_supplied_password = params.fetch("query_password")
    
    if user != nil
      are_they_legit = user.authenticate(the_supplied_password)
    
      if are_they_legit == false
        redirect_to("/user_sign_in", { :alert => "Incorrect password." })
      else
        session[:user_id] = user.id
      
        redirect_to("/dashboard")
      end
    else
      redirect_to("/user_sign_in", { :alert => "No user with that email address." })
    end
  end

  def destroy_cookies
    reset_session

    redirect_to("/")
  end

  def sign_up_form
    render({ :template => "user_authentication/sign_up.html.erb" })
  end

  def create
    @user = User.new
    @user.first_name = params.fetch("query_first_name")
    @user.last_name = params.fetch("query_last_name")
    @user.email = params.fetch("query_email")
    @user.password = params.fetch("query_password")
    @user.password_confirmation = params.fetch("query_password_confirmation")

    save_status = @user.save

    #@the_course = Course.new
    #@the_course.user_id = @user.id
    #@the_course.name = "Lower Back Pain"
    #@the_course.status = "In Progress"
    #@the_course.save

    the_new_user_survey = NewUserSurvey.new
    the_new_user_survey.user_id = @user.id
    the_new_user_survey.status = "Started"
    the_new_user_survey.save

    @education_videos = EducationVideo.all.order({ :id => :asc })
    
    @education_videos.each do |a_video|

      the_lesson = EducationLessson.new
      the_lesson.status = "Enrolled"
      the_lesson.name = a_video.display_name
      the_lesson.video_id = a_video.id
      the_lesson.user_id = @user.id
      the_lesson.save

    @list_of_education_lessons = @user.education_lesssons.order({ :id => :asc })
    first_education_lesson = @list_of_education_lessons.first
    first_education_lesson.status = "In Progress"
    first_education_lesson.save

    end

    @exercise_videos = ExerciseVideo.all.order({ :id => :asc })
    
    @exercise_videos.each do |a_video|

      the_lesson = ExerciseLessson.new
      the_lesson.status = "Enrolled"
      the_lesson.name = a_video.display_name
      the_lesson.video_id = a_video.id
      the_lesson.user_id = @user.id
      the_lesson.save

    @list_of_exercise_lessons = @user.exercise_lesssons.order({ :id => :asc })
    first_exercise_lesson = @list_of_exercise_lessons.first
    first_exercise_lesson.status = "In Progress"
    first_exercise_lesson.save
    
    end

    if save_status == true
      session[:user_id] = @user.id
   
      redirect_to("/new_user/1")
    else
      redirect_to("/user_sign_up", { :alert => "User account failed to create successfully."})
    end
  end
    
  def edit_profile_form
    render({ :template => "user_authentication/edit_profile.html.erb" })
  end

  def update
    @user = @current_user
    @user.email = params.fetch("query_email")
    @user.password = params.fetch("query_password")
    @user.password_confirmation = params.fetch("query_password_confirmation")
    @user.first_name = params.fetch("query_first_name")
    @user.last_name = params.fetch("query_last_name")
    @user.dob = params.fetch("query_dob")
    @user.goals_count = params.fetch("query_goals_count")
    @user.courses_count = params.fetch("query_courses_count")
    @user.pain_diaries_count = params.fetch("query_pain_diaries_count")
    
    if @user.valid?
      @user.save

      redirect_to("/", { :notice => "User account updated successfully."})
    else
      render({ :template => "user_authentication/edit_profile_with_errors.html.erb" })
    end
  end

  def destroy
    @current_user.destroy
    reset_session
    
    redirect_to("/", { :notice => "User account cancelled" })
  end
 
end
