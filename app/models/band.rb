class Band < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_and_belongs_to_many :users

  attr_accessible :description, :name

  # search stuff
  define_index do
      indexes name, :sortable => true
      indexes description
      has id, created_at, updated_at
  end

end
