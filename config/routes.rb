ActionController::Routing::Routes.draw do |map|
  map.comment '/comment', :controller => 'articles', :action => 'comment'
  
  map.resources :articles

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
