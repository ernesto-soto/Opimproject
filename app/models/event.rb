class Event < ActiveRecord::Base
attr_accessible :description, :event_name, :location
belongs_to :user

validates :user_id, presence: true
validates :description, presence: true
validates :event_name, presence: true
validates :location, presence: true

default_scope order: 'events.created_at DESC'
end