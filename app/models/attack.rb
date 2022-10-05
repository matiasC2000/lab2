class VictimMenores < ActiveModel::Validator
    def validate(record)
      if (record.victim.birthdate + 18.years) > Date.today
        record.errors.add :base, "This person is evil"
      end
    end
  end

class Attack < ApplicationRecord
belongs_to :monster
belongs_to :victim
validates_with VictimMenores
end
