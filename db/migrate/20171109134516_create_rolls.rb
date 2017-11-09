class CreateRolls < ActiveRecord::Migration[5.1]
  def change
    create_table :rolls do |t|
      t.references :frame
      t.integer :pins
    end
  end
end
