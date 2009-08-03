class SecretMessage < ActiveRecord::Base
  acts_as_authorization_object
	def to_param
    "#{title.gsub(/\W/, '-').downcase}" 
  end
end
