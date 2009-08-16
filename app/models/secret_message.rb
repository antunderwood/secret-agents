# == Schema Information
#
# Table name: secret_messages
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class SecretMessage < ActiveRecord::Base
  acts_as_authorization_object
	def to_param
    "#{title.gsub(/\W/, '-').downcase}" 
  end
end
