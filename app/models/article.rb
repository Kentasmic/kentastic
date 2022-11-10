class Article < ApplicationRecord
	include PgSearch::Model
	
	has_prefix_id :article
	
	pg_search_scope :search, against: [:title, :content], using: { tsearch: { 
																																			prefix: true,
																																			dictionary: "english",
																																			any_word: true		
																																		} 
																																	}
end
