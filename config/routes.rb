Rails.application.routes.draw do

  get("/", { :controller => "application", :action => "home"})

  # Routes for the Pain diary question resource:

  # CREATE
  post("/insert_pain_diary_question", { :controller => "pain_diary_questions", :action => "create" })
          
  # READ
  get("/pain_diary_questions", { :controller => "pain_diary_questions", :action => "index" })
  
  get("/pain_diary_questions/:path_id", { :controller => "pain_diary_questions", :action => "show" })
  
  # UPDATE
  
  post("/modify_pain_diary_question/:path_id", { :controller => "pain_diary_questions", :action => "update" })
  
  # DELETE
  get("/delete_pain_diary_question/:path_id", { :controller => "pain_diary_questions", :action => "destroy" })

  #------------------------------

  # Routes for the Course resource:

  # CREATE
  post("/insert_course", { :controller => "courses", :action => "create" })
          
  # READ
  get("/courses", { :controller => "courses", :action => "index" })
  
  get("/courses/:path_id", { :controller => "courses", :action => "show" })
  
  # UPDATE
  
  post("/modify_course/:path_id", { :controller => "courses", :action => "update" })
  
  # DELETE
  get("/delete_course/:path_id", { :controller => "courses", :action => "destroy" })

  #------------------------------

  # Routes for the Lesson resource:

  # CREATE
  post("/insert_lesson", { :controller => "lessons", :action => "create" })
          
  # READ
  get("/lessons", { :controller => "lessons", :action => "index" })
  
  get("/lessons/:path_id", { :controller => "lessons", :action => "show" })
  
  # UPDATE
  
  post("/modify_lesson/:path_id", { :controller => "lessons", :action => "update" })
  
  # DELETE
  get("/delete_lesson/:path_id", { :controller => "lessons", :action => "destroy" })

  #------------------------------

  # Routes for the Goal resource:

  # CREATE
  post("/insert_goal", { :controller => "goals", :action => "create" })
          
  # READ
  get("/goals", { :controller => "goals", :action => "index" })
  
  get("/goals/:path_id", { :controller => "goals", :action => "show" })
  
  # UPDATE
  
  post("/modify_goal/:path_id", { :controller => "goals", :action => "update" })
  
  # DELETE
  get("/delete_goal/:path_id", { :controller => "goals", :action => "destroy" })

  #------------------------------

  # Routes for the Pain diary resource:

  # CREATE
  post("/insert_pain_diary", { :controller => "pain_diaries", :action => "create" })
          
  # READ
  get("/pain_diaries", { :controller => "pain_diaries", :action => "index" })
  
  get("/pain_diaries/:path_id", { :controller => "pain_diaries", :action => "show" })
  
  # UPDATE
  
  post("/modify_pain_diary/:path_id", { :controller => "pain_diaries", :action => "update" })
  
  # DELETE
  get("/delete_pain_diary/:path_id", { :controller => "pain_diaries", :action => "destroy" })

  #------------------------------

  # Routes for the New user survey resource:

  # CREATE
  post("/insert_new_user_survey", { :controller => "new_user_surveys", :action => "create" })
          
  # READ
  get("/new_user_surveys", { :controller => "new_user_surveys", :action => "index" })
  
  get("/new_user_surveys/:path_id", { :controller => "new_user_surveys", :action => "show" })
  
  # UPDATE
  
  post("/modify_new_user_survey/:path_id", { :controller => "new_user_surveys", :action => "update" })
  
  # DELETE
  get("/delete_new_user_survey/:path_id", { :controller => "new_user_surveys", :action => "destroy" })

  #------------------------------

  # Routes for the Question resource:

  # CREATE
  post("/insert_question", { :controller => "questions", :action => "create" })
          
  # READ
  get("/questions", { :controller => "questions", :action => "index" })
  
  get("/questions/:path_id", { :controller => "questions", :action => "show" })
  
  # UPDATE
  
  post("/modify_question/:path_id", { :controller => "questions", :action => "update" })
  
  # DELETE
  get("/delete_question/:path_id", { :controller => "questions", :action => "destroy" })

  #------------------------------

  # Routes for the Goal category resource:

  # CREATE
  post("/insert_goal_category", { :controller => "goal_categories", :action => "create" })
          
  # READ
  get("/goal_categories", { :controller => "goal_categories", :action => "index" })
  
  get("/goal_categories/:path_id", { :controller => "goal_categories", :action => "show" })
  
  # UPDATE
  
  post("/modify_goal_category/:path_id", { :controller => "goal_categories", :action => "update" })
  
  # DELETE
  get("/delete_goal_category/:path_id", { :controller => "goal_categories", :action => "destroy" })

  #------------------------------

  # Routes for the Video resource:

  # CREATE
  post("/insert_video", { :controller => "videos", :action => "create" })
          
  # READ
  get("/videos", { :controller => "videos", :action => "index" })
  
  get("/videos/:path_id", { :controller => "videos", :action => "show" })
  
  # UPDATE
  
  post("/modify_video/:path_id", { :controller => "videos", :action => "update" })
  
  # DELETE
  get("/delete_video/:path_id", { :controller => "videos", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

end
