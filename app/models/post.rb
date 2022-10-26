class Post < ApplicationRecord
	#This makes the URL IDs unguessable (unless your code and the salt is visible on Github)
	has_prefix_id :kentastic#, salt: "kentastichellyabrother"
end
