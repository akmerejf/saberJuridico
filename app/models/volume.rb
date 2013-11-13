class Volume < ActiveRecord::Base
	has_many :articles
	accepts_nested_attributes_for :articles, allow_destroy: true 
	validates_presence_of :edicao
end
