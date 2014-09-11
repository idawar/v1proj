class Song < ActiveRecord::Base
 
#  many to many association
  has_and_belongs_to_many :singers
#  validations
  validates_presence_of :name
  validates_uniqueness_of :name

  has_attached_file :audio
  validates_attachment_presence :audio
  validates_attachment_content_type :audio, :content_type => ['audio/mp3','audio/mpeg','audio/mpeg3','audio/x-mp3', 'audio/x-mpeg', 'audio/x-mpeg3']
#   accepts_nested_attributes_for :singer_songs
end
