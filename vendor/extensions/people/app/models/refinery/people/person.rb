module Refinery
  module People
    class Person < Refinery::Core::BaseModel
      self.table_name = 'refinery_people'

      attr_accessible :name, :designation, :profile, :joined_on, :photo_id, :team, :position

      acts_as_indexed :fields => [:name, :designation, :profile, :team]

      validates :name, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
