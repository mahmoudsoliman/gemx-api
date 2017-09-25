class CreateLbs < ActiveRecord::Migration[5.1]
  def change
    create_table :lbs do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
