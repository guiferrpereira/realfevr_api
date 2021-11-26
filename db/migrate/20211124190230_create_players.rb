class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name, null: false
      t.integer :number
      t.string :nationality, null: false
      t.integer :age
      t.string :position

      t.timestamps
    end
  end
end
