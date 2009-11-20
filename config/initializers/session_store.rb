# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_michaelthethomas_session',
  :secret      => '4c4438b33a9e677ee6ed30660fcd4b7e18bebf9140536af9b5c1e1215c8bf4131d81e5329dad2ebfff30f297f20d0e164c8d1641ccecca058d65b5c0e9b55b4c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
