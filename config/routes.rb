ActionController::Routing::Routes.draw do |map|
  map.comment '/comment', :controller => 'articles', :action => 'comment'
  map.feedback '/feedback', :controller => 'articles', :action => 'feedback'
  
  map.resources :articles

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
