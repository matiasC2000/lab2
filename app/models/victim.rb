class Victim < ApplicationRecord
belongs_to :attak
validates :name, presence:true
end
