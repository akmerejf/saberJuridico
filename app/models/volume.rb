	class Volume < ActiveRecord::Base
	has_many :items, dependent: :destroy
	accepts_nested_attributes_for :items, allow_destroy: true 
	validates_presence_of :edicao
end
