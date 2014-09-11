class Singer < ActiveRecord::Base
#  many to many association with songs
  has_and_belongs_to_many :songs
  
  validates_presence_of :first_name, scope:  [ :last_name]
  validates_uniqueness_of :first_name, scope: [ :last_name]
#  accepts_nested_attributes_for :songs, allow_destroy: true, reject_if: lambda {|attributes| attributes['name'].blank?}
end
