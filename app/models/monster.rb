class Monster < ApplicationRecord
include ActiveModel::Validations
has_many :attacks,dependent: :destroy
has_many :victims, through: :attacks
has_many :tweets
validates :name,uniqueness:true, presence:true
end
