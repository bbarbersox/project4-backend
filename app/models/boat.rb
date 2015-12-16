class Boat < ActiveRecord::Base
  has_many :participants
  has_many :teams, through: :participants
end
