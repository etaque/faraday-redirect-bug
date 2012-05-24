Timeout bug on follow_redirect + multipart.

run app.rb (Sinatra app) then client.rb -> timeout error.

No timeout if you comment :follow_redirects or :multipart middleware usage.