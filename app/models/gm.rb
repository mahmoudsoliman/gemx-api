class Gm < ApplicationRecord
    has_and_belongs_to_many :lbs, foreign_key: "gm_id"
end
