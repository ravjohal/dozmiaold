class Playlist < ActiveRecord::Base

	has_many :tracks
	belongs_to :user

	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
                # :url  => ":class/:attachment/:id/:style/:filename", # for some reason these ulr and path vars don't work!
                # :path => ":class/:attachment/:id/:style/:filename"
                 # TODO: default_url =>  Need a default photo to show when no photo is chosen!

  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
  validates_attachment :photo,:size => { :in => 0..1000.kilobytes }
end
