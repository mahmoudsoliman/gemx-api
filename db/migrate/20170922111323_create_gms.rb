class CreateGms < ActiveRecord::Migration[5.1]
  def change
    create_table :gms do |t|
      t.string :name

      t.timestamps
    end
  end
end
