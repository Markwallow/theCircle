# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create! :first_name => "Jorge", :last_name => "Chao", :user_type => "Promoter", :email => "jchao@cs.uno.edu"
user2 = User.create! :first_name => "Charles", :last_name => "Perniciaro III", :user_type => "Promoter", :email => "cpernici@cs.uno.edu"
user3 = User.create! :first_name => "Devon", :last_name => "Fries", :user_type => "Promoter", :email => "dfries@cs.uno.edu"
location1 = Location.create! :name => "Siberia"
location2 = Location.create! :name => "Republic", :address => "828 South Peters St."
location3 = Location.create! :name => "Tipitina's", :address => "501 Napoleon"
event1 = Event.create! :title => "The Ghostwood", :location => location1
event2 = Event.create! :title => "Borgore", :location => location2
event3 = Event.create! :title => "Bonobo", :location => location3
Task.create :event_id => event1.id, :completed => false, :task_type => "Flyering"
Task.create :event_id => event1.id, :completed => false, :task_type => "Postering"
Task.create :event_id => event2.id, :completed => false, :task_type => "Exit flyer"
Task.create :event_id => event3.id, :completed => false, :task_type => "Postering"
Bulletin.create :event_id => event1.id, :status => "Siberia is very cold"
Bulletin.create :event_id => event2.id, :status => "Borgore posters have landed"
Bulletin.create :event_id => event2.id, :status => "Exit flyer at Crystal Castles tonight"
Bulletin.create :event_id => event3.id, :status => "Postering at Maple Street"
activity1 = Activity.create! :user_id => user1.id, :latitude => 30.1, :longitude => -90.2
activity2 = Activity.create! :user_id => user1.id, :latitude => 30.4, :longitude => -90.3
activity3 = Activity.create! :user_id => user2.id, :latitude => 31.0, :longitude => -89.0
activity4 = Activity.create! :user_id => user2.id, :latitude => 29.0, :longitude => -91.0
activity5 = Activity.create! :user_id => user3.id, :latitude => 30.0, :longitude => -90.0

#  id         :integer          not null, primary key
#  user_id    :integer
#  latitude   :float
#  longitude  :float
#  time       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
