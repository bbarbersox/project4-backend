class Team < ActiveRecord::Base
  has_many :participants
  has_many :boats, through: :participants
end
