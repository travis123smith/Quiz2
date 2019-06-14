class CreateBeads < ActiveRecord::Migration[5.2]
  def change
    create_table :beads do |t|
      t.text :message
      t.timestamps
    end
  end
end
