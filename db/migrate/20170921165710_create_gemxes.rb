class CreateGemxes < ActiveRecord::Migration[5.1]
  def change
    create_table :gemxes do |t|

      t.timestamps
    end
  end
end
