class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :type
      t.string :name_short
      t.string :name
      t.string :value
      t.integer :value_int
      t.text :meaning_up
      t.text :meaning_rev
      t.text :desc

      t.timestamps
    end
  end
end
