# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_redis-example_session',
  :secret      => '1a035840f166945a5b214f4b63476a249b2bc39568a3102561c858cacb6d002bbcc1e82a957fd0f56c475919fabc7d14c711cde87e39f7c141b14c9fb0ad9de8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
