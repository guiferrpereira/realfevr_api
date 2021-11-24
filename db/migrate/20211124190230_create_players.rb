class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :number
      t.string :nationality
      t.integer :age
      t.string :position

      t.timestamps
    end
  end
end
