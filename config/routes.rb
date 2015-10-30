ActionController::Routing::Routes.draw do |map|

  map.resources :monologues

  map.resources :adminmono, :controller => 'admin/monologues'
#  map.resources :admin do |admin|
#    admin.resources :monologues
#  end
  
  map.resources :genders

  map.resources :plays

  map.resources :adminplays, :controller => 'admin/plays'

  map.resources :authors

  map.resources :users

  map.resources :logins

  map.connect '/admin', :controller => 'admin', :action => 'index'

  map.connect '/logout', :controller => 'logins', :action => 'destroy'

  men_id = 3
  women_id = 2
  map.connect '/men', :controller => :genders, :action => 'men', :id => men_id
  map.connect '/women', :controller => :genders, :action => 'women', :id => women_id


# common entry pages from old site
  map.connect '/womenindex.shtml', :controller => :genders, :action => 'women', :id => women_id
  map.connect '/menindex.shtml', :controller => :genders, :action => 'men', :id => men_id
  map.connect '/womensmonosold.htm', :controller => :genders, :action => 'women', :id => women_id
  map.connect '/mensmonosold.shtml', :controller => :genders, :action => 'men', :id => men_id
  map.connect '/womensmonos.htm', :controller => :genders, :action => 'women', :id => women_id
  map.connect '/mensmonos.htm', :controller => :genders, :action => 'men', :id => men_id

  # Hamlet
  play_id = 31
  map.connect '/hamlet', :controller => 'plays', :action => 'show', :id => play_id
  map.connect '/men/hamlet', :controller => 'plays', :action => 'show', :id => play_id, :g => men_id
  map.connect '/women/hamlet', :controller => 'plays', :action => 'show', :id => play_id, :g => women_id

  # Lear
  play_id = 32
  map.connect '/kinglear', :controller => 'plays', :action => 'show', :id => play_id
  map.connect '/men/kinglear', :controller => 'plays', :action => 'show', :id => play_id, :g => men_id
  map.connect '/women/kinglear', :controller => 'plays', :action => 'show', :id => play_id, :g => women_id

  # A Midsummer Night's Dream
  play_id = 13
  map.connect '/midsummer', :controller => 'plays', :action => 'show', :id => play_id
  map.connect '/men/midsummer', :controller => 'plays', :action => 'show', :id => play_id, :g => men_id
  map.connect '/women/midsummer', :controller => 'plays', :action => 'show', :id => play_id, :g => women_id

  # All's Well That Ends Well
  play_id = 9
  map.connect '/AllsWell', :controller => 'plays', :action => 'show', :id => play_id
  map.connect '/men/AllsWell', :controller => 'plays', :action => 'show', :id => play_id, :g => men_id
  map.connect '/women/AllsWell', :controller => 'plays', :action => 'show', :id => play_id, :g => women_id


  # As You Like It
  play_id = 1
  map.connect '/AsYouLikeIt', :controller => 'plays', :action => 'show', :id => play_id
  map.connect '/men/AsYouLikeIt', :controller => 'plays', :action => 'show', :id => play_id, :g => men_id
  map.connect '/women/AsYouLikeIt', :controller => 'plays', :action => 'show', :id => play_id, :g => women_id

  # The Comedy of Errors
  play_id = 2
  map.connect '/Errors', :controller => 'plays', :action => 'show', :id => play_id
  map.connect '/men/Errors', :controller => 'plays', :action => 'show', :id => play_id, :g => men_id
  map.connect '/women/Errors', :controller => 'plays', :action => 'show', :id => play_id, :g => women_id

  # Cymbeline
  play_id = 3
  map.connect '/Cymbeline', :controller => 'plays', :action => 'show', :id => play_id
  map.connect '/men/Cymbeline', :controller => 'plays', :action => 'show', :id => play_id, :g => men_id
  map.connect '/women/Cymbeline', :controller => 'plays', :action => 'show', :id => play_id, :g => women_id

  # Love's Labours Lost
  play_id = 4
  map.connect '/LLL', :controller => 'plays', :action => 'show', :id => play_id
  map.connect '/men/LLL', :controller => 'plays', :action => 'show', :id => play_id, :g => men_id
  map.connect '/women/LLL', :controller => 'plays', :action => 'show', :id => play_id, :g => women_id

  # The Merchant of Venice
  play_id = 5
  map.connect '/merchant', :controller => 'plays', :action => 'show', :id => play_id
  map.connect '/men/merchant', :controller => 'plays', :action => 'show', :id => play_id, :g => men_id
  map.connect '/women/TMoV', :controller => 'plays', :action => 'show', :id => play_id, :g => women_id

  # Much Ado About Nothing
  play_id = 6
  map.connect '/MuchAdo', :controller => 'plays', :action => 'show', :id => play_id
  map.connect '/men/MuchAdo', :controller => 'plays', :action => 'show', :id => play_id, :g => men_id
  map.connect '/women/MuchAdo', :controller => 'plays', :action => 'show', :id => play_id, :g => women_id

  # Twelfth Night, Or What You Will
  play_id = 8
  map.connect '/12thNight', :controller => 'plays', :action => 'show', :id => play_id
  map.connect '/men/12thNight', :controller => 'plays', :action => 'show', :id => play_id, :g => men_id
  map.connect '/women/12thNight', :controller => 'plays', :action => 'show', :id => play_id, :g => women_id

  # Henry IV, Part 1
  play_id = 19
  map.connect '/HenryIVi', :controller => 'plays', :action => 'show', :id => play_id
  map.connect '/men/HenryIVi', :controller => 'plays', :action => 'show', :id => play_id, :g => men_id
  map.connect '/women/HenryIVi', :controller => 'plays', :action => 'show', :id => play_id, :g => women_id

  # Antony and Cleopatra
  play_id = 29
  map.connect '/AandC', :controller => 'plays', :action => 'show', :id => play_id
  map.connect '/men/AandC', :controller => 'plays', :action => 'show', :id => play_id, :g => men_id
  map.connect '/women/AandC', :controller => 'plays', :action => 'show', :id => play_id, :g => women_id

  # Macbeth
  play_id = 33
  map.connect '/macbeth', :controller => 'plays', :action => 'show', :id => play_id
  map.connect '/men/macbeth', :controller => 'plays', :action => 'show', :id => play_id, :g => men_id
  map.connect '/women/macbeth', :controller => 'plays', :action => 'show', :id => play_id, :g => women_id

  # Othello
  play_id = 34
  map.connect '/othello', :controller => 'plays', :action => 'show', :id => play_id
  map.connect '/men/othello', :controller => 'plays', :action => 'show', :id => play_id, :g => men_id
  map.connect '/women/othello', :controller => 'plays', :action => 'show', :id => play_id, :g => women_id

  # Romeo and Juliet
  play_id = 35
  map.connect '/RandJ', :controller => 'plays', :action => 'show', :id => play_id
  map.connect '/men/RandJ', :controller => 'plays', :action => 'show', :id => play_id, :g => men_id
  map.connect '/women/RandJ', :controller => 'plays', :action => 'show', :id => play_id, :g => women_id

  # route for static pages of joy
  map.connect ':action', :controller => "static"  

  # Leave the following at the bottom of this file
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.root :controller => 'monologues'

end


