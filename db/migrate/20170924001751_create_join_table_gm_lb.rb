class CreateJoinTableGmLb < ActiveRecord::Migration[5.1]
  def change
    create_join_table :Gms, :Lbs do |t|
       t.index [:gm_id, :lb_id]
       t.index [:lb_id, :gm_id]
    end
  end
end
