module SecretMessagesHelper
		include Acl9Helpers

    access_control :admin? do
      allow :admin
    end
end
