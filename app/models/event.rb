class Event < ActiveRecord::Base
  attr_accessible :date, :location_id, :title
  belongs_to :location
  has_many :tasks
  has_and_belongs_to_many :users
end
