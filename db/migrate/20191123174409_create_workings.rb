class CreateWorkings < ActiveRecord::Migration[6.0]
  def change
    create_table :workings do |t|
      t.string :name
      t.string :email
      t.integer :repair_id

      t.timestamps
    end
  end
end
