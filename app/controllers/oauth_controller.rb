class OauthController < ApplicationController

	def show

	end

	def oauth_redirect

		code = params[:code]
		
		response = Boxmessenger.post('/oauth2/token',
									:body => {
											:grant_type => "authorization_code",
											:code => code , 
											:client_id => "g39o1dns9jfv1k6f1m6xplrrdbul8xjl" ,
											:client_secret => "CQ8gOfv9gXIIzVWlY5K61ZUuwuXP6WlN"
											}
									)
								
		parsed_json = ActiveSupport::JSON.decode(response.body)
		@access_token = parsed_json[:access_token]
		@refresh_token = parsed_json[:refresh_token]
	
	end
end


