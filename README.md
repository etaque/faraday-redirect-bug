Timeout bug on follow_redirect + multipart.

run app.rb (Sinatra app) then client.rb -> timeout error.

No timeout if you comment :follow_redirects or :multipart middleware usage.

## Zeke's Notes
* Use Bundler to specify the version of each library used.

### Usage
```
bundle install
bundle exec ruby client.rb

# Running tests:

.

Finished tests in 0.040260s, 24.8385 tests/s, 24.8385 assertions/s.

1 tests, 1 assertions, 0 failures, 0 errors, 0 skips
```
