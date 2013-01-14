class Song < ActiveRecord::Base
  
  # automatically generate users_bands
  has_and_belongs_to_many :bands

  has_attached_file :mp3

end
