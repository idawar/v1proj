class CreateSingersSongs < ActiveRecord::Migration
  def change
    create_table :singers_songs, :id => false do |t|
       t.references :singer
        t.references :song
    end
  end
end
