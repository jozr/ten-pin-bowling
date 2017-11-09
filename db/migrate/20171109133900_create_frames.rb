class CreateFrames < ActiveRecord::Migration[5.1]
  def change
    create_table :frames do |t|
      t.references :game
      t.boolean :last, default: false
    end
  end
end
