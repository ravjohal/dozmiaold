class Artist < ActiveRecord::Base
	has_many :tracks
	has_many :albums
	belongs_to :record_label
end
