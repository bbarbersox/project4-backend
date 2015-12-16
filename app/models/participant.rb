class Participant < ActiveRecord::Base
  belongs_to :boat
  belongs_to :team
end
