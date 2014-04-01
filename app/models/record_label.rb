class RecordLabel < ActiveRecord::Base
	has_many :tracks
	has_many :albums
	has_many :artists
end
