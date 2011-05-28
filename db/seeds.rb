# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
#
User.create( :name => "admin", :description => "admin", :email => "admin@admin", :admin => true)
User.create( :name => "that gay guy i'm watching at the library", :description => "some dick dunno" )
User.create( :name => "the drummer from 35007", :description => "he added me on twitter" )

Band.create(:name => "They still have slavery", :description => "babykilling" )
Band.create(:name => "We live in a fucked up world", :description => "post hypnotic powergore")

# now i wanna have one user in two bands and have one band have two users
BandUser.create(:band_id => 1, :user_id => 1)
BandUser.create(:band_id => 2, :user_id => 1)
BandUser.create(:band_id => 2, :user_id => 2)

News.create(:title => "And here we go", :content => "Und hier geht sie los, die Sause.")
News.create(:title => "Mama!", :content => "I just killed a man")
News.create(:title => "Put my gun against his head", :content => "Pulled the trigger now he's dead")
