Rails.application.routes.draw do

  get '/'             => 'application#home'
  get 'dashboard'     => 'application#dashboard'
  
  get 'user_sign_up'  => 'user_authentication#sign_up_form'        
  post 'insert_user'  => 'user_authentication#create'

  get 'new_user/1'    => 'new_user_surveys#q_1'
  get 'new_user/2'    => 'new_user_surveys#q_2'
  get 'new_user/3'    => 'new_user_surveys#q_3'
  get 'new_user/4'    => 'new_user_surveys#q_4'
  get 'new_user/5'    => 'new_user_surveys#q_5'
  get 'new_user/6'    => 'new_user_surveys#q_6'
  get 'new_user/7'    => 'new_user_surveys#q_7'
  get 'new_user/8'    => 'new_user_surveys#q_8'
  get 'new_user/9'    => 'new_user_surveys#q_9'
  get 'new_user/10'   => 'new_user_surveys#q_10'
  get 'new_user/11'   => 'new_user_surveys#q_11'
  get 'new_user/12'   => 'new_user_surveys#q_12'
  get 'new_user/13'   => 'new_user_surveys#q_13'
  get 'new_user/14'   => 'new_user_surveys#q_14'
  get 'new_user/15'   => 'new_user_surveys#q_15'
  get 'new_user/16'   => 'new_user_surveys#q_16'
  get 'new_user/17'   => 'new_user_surveys#q_17'
  get 'new_user/18'   => 'new_user_surveys#q_18'
  get 'new_user/19'   => 'new_user_surveys#q_19'
  get 'new_user/20'   => 'new_user_surveys#q_20'
  get 'new_user/21'   => 'new_user_surveys#q_21'
  get 'new_user/22'   => 'new_user_surveys#q_22'
  get 'new_user/23'   => 'new_user_surveys#q_23'
  get 'new_user/24'   => 'new_user_surveys#q_24'

  # Routes for the Goal resource:

  # CREATE
  get("/creategoal", { :controller => "goals", :action => "selectcategory" })
  get("/creategoal/:category", { :controller => "goals", :action => "creategoal" })


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

  # Routes for the User account:

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
