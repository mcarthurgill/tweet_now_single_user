get '/' do
  erb :index
end

post '/' do
	if Twitter.update(params[:tweet])
		erb :_success
	else
		erb :_failure
	end
end