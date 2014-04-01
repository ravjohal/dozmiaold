class Album < ActiveRecord::Base
	has_many :tracks
	belongs_to :artist
	belongs_to :record_label
end
