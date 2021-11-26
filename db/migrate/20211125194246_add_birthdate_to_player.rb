class AddBirthdateToPlayer < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :birthdate, :string
    add_index :players, [:name, :birthdate, :nationality], unique: true
  end
end
