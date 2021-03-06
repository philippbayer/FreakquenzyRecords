class User < ActiveRecord::Base
  # make /users/bla possible instead of users/1
  extend FriendlyId
  friendly_id :name, use: :slugged

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
  # attr_accessible :title, :body
  
  # automatically generate users_bands
  has_and_belongs_to_many :bands

  define_index do
      indexes name, :sortable => true
      indexes description
      has id, created_at, updated_at
  end
end
