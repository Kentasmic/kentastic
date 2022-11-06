class Post < ApplicationRecord
	#10-27-22
	include PgSearch::Model
	
	pg_search_scope :search, against: [:title, :content], using: { tsearch: { 
																																			prefix: true,
																																			dictionary: "english",
																																			any_word: true
																																			
																															} }
	#10-25-22
	#This makes the URL IDs unguessable (unless your code and the salt is visible on Github)
	has_prefix_id :post#, salt: "yoursalt" - this is optional, a global 														salt is set in an intializer
	
	
end
