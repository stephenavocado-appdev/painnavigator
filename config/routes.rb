Rails.application.routes.draw do



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
