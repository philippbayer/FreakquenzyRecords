class Band < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  attr_accessible :description, :name

  has_and_belongs_to_many :users
end
