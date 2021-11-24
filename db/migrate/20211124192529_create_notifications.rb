class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.references :player
      t.text :message

      t.timestamps
    end
  end
end
