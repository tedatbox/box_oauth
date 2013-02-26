BoxOauth::Application.routes.draw do
  
root to: 'oauth#show'
match '/oauth_redirect' => 'oauth#oauth_redirect'
  
end
