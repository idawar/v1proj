class SingerSong < ActiveRecord::Base
  belongs_to :singer
  belongs_to :song
end
