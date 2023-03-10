Rails.application.routes.draw do

get( "/", { :controller => "spot_types", :action => "homepage"})

  # Routes for the Review resource:

  # CREATE
  post("/insert_review", { :controller => "reviews", :action => "create" })
          
  # READ
  get("/reviews", { :controller => "reviews", :action => "index" })
  
  get("/reviews/:path_id", { :controller => "reviews", :action => "show" })
  
  # UPDATE
  
  post("/modify_review/:path_id", { :controller => "reviews", :action => "update" })
  
  # DELETE
  get("/delete_review/:path_id", { :controller => "reviews", :action => "destroy" })

  #------------------------------

  # Routes for the Spot offering resource:

  # CREATE
  post("/insert_spot_offering", { :controller => "spot_offerings", :action => "create" })
          
  # READ
  get("/spot_offerings", { :controller => "spot_offerings", :action => "index" })
  
  get("/spot_offerings/:path_id", { :controller => "spot_offerings", :action => "show" })
  
  # UPDATE
  
  post("/modify_spot_offering/:path_id", { :controller => "spot_offerings", :action => "update" })
  
  # DELETE
  get("/delete_spot_offering/:path_id", { :controller => "spot_offerings", :action => "destroy" })

  #------------------------------

  # Routes for the Spot type resource:

  # CREATE
  post("/insert_spot_type", { :controller => "spot_types", :action => "create" })
          
  # READ
  get("/spot_types", { :controller => "spot_types", :action => "index" })
  
  get("/spot_types/:path_id", { :controller => "spot_types", :action => "show" })
  
  # UPDATE
  
  post("/modify_spot_type/:path_id", { :controller => "spot_types", :action => "update" })
  
  # DELETE
  get("/delete_spot_type/:path_id", { :controller => "spot_types", :action => "destroy" })

  #------------------------------

  # Routes for the Bookmark resource:

  # CREATE
  post("/insert_bookmark", { :controller => "bookmarks", :action => "create" })
          
  # READ
  get("/bookmarks", { :controller => "bookmarks", :action => "index" })
  
  get("/bookmarks/:path_id", { :controller => "bookmarks", :action => "show" })
  
  # UPDATE
  
  post("/modify_bookmark/:path_id", { :controller => "bookmarks", :action => "update" })
  
  # DELETE
  get("/delete_bookmark/:path_id", { :controller => "bookmarks", :action => "destroy" })

  #------------------------------

  # Routes for the Amenity resource:

  # CREATE
  post("/insert_amenity", { :controller => "amenities", :action => "create" })
          
  # READ
  get("/amenities", { :controller => "amenities", :action => "index" })
  
  get("/amenities/:path_id", { :controller => "amenities", :action => "show" })
  
  # UPDATE
  
  post("/modify_amenity/:path_id", { :controller => "amenities", :action => "update" })
  
  # DELETE
  get("/delete_amenity/:path_id", { :controller => "amenities", :action => "destroy" })

  #------------------------------

  # Routes for the Region resource:

  # CREATE
  post("/insert_region", { :controller => "regions", :action => "create" })
          
  # READ
  get("/regions", { :controller => "regions", :action => "index" })
  
  get("/regions/:path_id", { :controller => "regions", :action => "show" })
  
  # UPDATE
  
  post("/modify_region/:path_id", { :controller => "regions", :action => "update" })
  
  # DELETE
  get("/delete_region/:path_id", { :controller => "regions", :action => "destroy" })

  #------------------------------

  # Routes for the Category resource:

  # CREATE
  post("/insert_category", { :controller => "categories", :action => "create" })
          
  # READ
  get("/categories", { :controller => "categories", :action => "index" })
  
  get("/categories/:path_id", { :controller => "categories", :action => "show" })
  
  # UPDATE
  
  post("/modify_category/:path_id", { :controller => "categories", :action => "update" })
  
  # DELETE
  get("/delete_category/:path_id", { :controller => "categories", :action => "destroy" })

  #------------------------------

  # Routes for the Spot resource:

  # CREATE
  post("/insert_spot", { :controller => "spots", :action => "create" })
          
  # READ
  get("/spots", { :controller => "spots", :action => "index" })
  
  get("/spots/:path_id", { :controller => "spots", :action => "show" })
  
  # UPDATE
  
  post("/modify_spot/:path_id", { :controller => "spots", :action => "update" })
  
  # DELETE
  get("/delete_spot/:path_id", { :controller => "spots", :action => "destroy" })

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
