# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_secret_agents_session',
  :secret      => 'cc766bc2ee723b2bf3263f47c1a11bee2d56e3356d4bec209054be6548532148d378d0cff574cb2f11d3e8ae31afdad4c0b238a24e95e10b10adbb1f20d3cf0d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
