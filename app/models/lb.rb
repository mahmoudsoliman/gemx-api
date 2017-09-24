class Lb < ApplicationRecord
    has_and_belongs_to_many :gms, foreign_key: "lb_id"
end
